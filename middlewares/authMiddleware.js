const {validateAccessToken} = require('../services/tokenService');

module.exports = async function (req, res, next){
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

        req.user = user;

        next();
    }catch (e) {
        return res.status(401).json();
    }
};