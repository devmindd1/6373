const jwt = require('jsonwebtoken');

exports.generateTokens = function(payload){
    const accessToken = jwt.sign(payload, process.env.JWT_ACCESS_SECRET, {expiresIn: '15d'});
    const refreshToken = jwt.sign(payload, process.env.JWT_REFRESH_SECRET, {expiresIn: '30d'});

    return {
        accessToken,
        refreshToken
    }
};

exports.validateAccessToken = function(_token){
    return jwt.verify(_token, process.env.JWT_ACCESS_SECRET);
};

exports.validateRefreshToken = function(_token){
    return jwt.verify(_token, process.env.JWT_REFRESH_SECRET);
};