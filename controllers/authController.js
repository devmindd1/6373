const bcrypt = require('bcrypt');
const {validationResult} = require('express-validator');
const UserModel = require('../models/UserModel');
const {generateTokens} = require('../services/tokenService');
const {validateRefreshToken} = require('../services/tokenService');
const UserDto = require('../dtos/UserDto');

exports.connect = async function(req, res){
    const userModel = new UserModel();


    console.log(req.user.id);
    console.log(req.user);

    res.response.user = await userModel.getById(req.user.id);

    return res.status(200).json(res.response);
};

exports.logout = async function(req, res){
    // const userModel = new UserModel();
    //
    // res.response.user = await userModel.getById(req.user.id);

    return res.status(200).json(res.response);
};

exports.refresh = async function(req, res){
    const {refreshToken} = req.body;
    if(!refreshToken)
        res.status(401).json(req.response);

    const userData = validateRefreshToken(refreshToken);
    if(!userData)
        return res.status(401).json(res.response);

    const userModel = new UserModel();

    res.response.user = await userModel.getAllById(userData.id);
    const user = new UserDto(res.response.user);

    res.response.tokens = generateTokens({...user});
    await userModel.updateAccessToken(userData.id, res.response.tokens.accessToken);

    return res.status(200).json(res.response);
};

exports.signUp = async function(req, res){
    const userModel = new UserModel();
    const {email, password, firstName, lastName, company, address, country_id} = req.body;

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.response.validationErrors = errors.array();
        return res.status(400).json(res.response);
    }

    const hashPassword = await bcrypt.hash(password, 3);
    const user = await userModel.insert({
        email: email,
        password: hashPassword,
        first_name: firstName,
        last_name: lastName,
        company: company,
        address: address,
        country_id: country_id || 0,
    });

    res.response.user = new UserDto(user);
    res.response.tokens = generateTokens({...res.response.user});

    await userModel.updateAccessToken(user.id, res.response.tokens.accessToken);

    return res.json(res.response);
};

exports.login = async function(req, res){
    const {email, password} = req.body;
    const userModel = new UserModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.response.validationErrors = errors.array();
        return res.status(400).json(res.response);
    }

    const user = await userModel.getByEmail(email);
    if(!user){
        res.response.errorMessage = 'email or password is wrong';
        return res.status(400).json(res.response);
    }

    const isPassEquals = await bcrypt.compare(password, user.password);
    if(!isPassEquals){
        res.response.errorMessage = 'email or password is wrong';
        return res.status(400).json(res.response);
    }

    res.response.user = new UserDto(user);
    res.response.tokens = await generateTokens({...res.response.user});

    await userModel.updateAccessToken(user.id, res.response.tokens.accessToken);

    return res.status(200).json(res.response);
};