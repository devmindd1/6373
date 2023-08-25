const {validateAccessToken} = require('../services/tokenService');
const UserDto = require('../dtos/UserDto');
const UserModel = require('../models/UserModel.js');

module.exports = async function (req, res, next){
    const userModel = new UserModel();

    try {
        const authorizationHeader = req.headers.authorization;
        if(!authorizationHeader)
            return res.status(401).json();

        const _token = authorizationHeader.split(' ')[1];
        if(!_token)
            return res.status(401).json();

        const user = validateAccessToken(_token);
        if(!user)
            return res.status(401).json();

        const userData = await userModel.getUserByAccessToken(_token);
        if(!userData)
            return res.status(401).json();


        console.log(userData);

        req.user = new UserDto(user);

        next();
    }catch (e) {
        return res.status(401).json();
    }
};