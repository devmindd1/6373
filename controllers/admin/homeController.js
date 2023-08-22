const {validationResult} = require('express-validator');
const {string2sha1} = require('../../helpers/stringHelper.js');
// const UserModelClass = require('../../models/userModelMy.js');

exports.index = function(req, res){
    res.render('admin/home/index');
};

exports.edit = async function(req, res){

    console.log(req.user);

    res.render("admin/home/edit",  {user: req.user});
};

exports.update = async function(req, res){
    let userModel = new UserModelClass();
    let errors = validationResult(req);

    if(!errors.errors.length){
        const userData = {
            first_name: req.body.first_name,
            last_name: req.body.last_name,
            email: req.body.email
        };

        if(req.body.password)
            userData.password = string2sha1(req.body.password);

        await userModel.updateById(req.user.id, userData);

        res.redirect("/admin");
    }

    res.render("admin/home/edit",  {user: req.user, errorsArray: errors.array()});
};


// app.post('/admin/edit',
//     [
//         body('email').not().isEmpty().isEmail().trim(),
//         body('password').custom((value, { req }) => {
//             if (value !== req.body.passwordConfirmation) {
//                 throw new Error('Password confirmation does not match password');
//             }
//             return true;
//         })
//     ],
//     async (req, res) => {
//         let userModel = new UserModel();
//         let errors = validationResult(req);
//
//         if(!errors.errors.length){
//             await userModel.updateAdminUser(res.authUser.id, req.body);
//             res.redirect("/admin");
//         }
//
//         res.render("admin/home/edit",  {user: res.authUser});
//     });