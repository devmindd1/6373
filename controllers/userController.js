const bcrypt = require('bcrypt');
const UserModel = require('../models/UserModel');
const {validationResult} = require('express-validator');

exports.resetPassword = async function(req, res){
    const {password} = req.body;

    const userModel = new UserModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.response.validationErrors = errors.array();
        return res.status(400).json(res.response);
    }

    const hashPassword = await bcrypt.hash(password, 3);
    await userModel.updateById(req.user.id, {
        password: hashPassword
    });

    return res.status(200).json(res.response);
};

exports.update = async function(req, res){
    const {first_name, last_name, company, address, country_id} = req.body;

    const userModel = new UserModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.response.validationErrors = errors.array();
        return res.status(400).json(res.response);
    }

    await userModel.updateById(req.user.id, {
        first_name: first_name,
        last_name: last_name,
        company: company || '',
        address: address || '',
        country_id: country_id || 0
    });

    return res.status(200).json(res.response);
};