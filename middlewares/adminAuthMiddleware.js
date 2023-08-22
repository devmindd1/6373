const UserModel = require('../models/userModel.js');

module.exports = async function (req, res, next){
    const userModel = new UserModel();

    try {
        const _token = req.cookies['adminUToken'];
        if(!_token)
            return res.redirect('login');

        const [userData] = await userModel.getUserByRefreshToken(_token);
        if(!userData)
            return res.redirect('login');

        req.user = userData;
        next();
    }catch (e) {
        return res.redirect('login');
    }
};