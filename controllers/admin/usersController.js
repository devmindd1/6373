let { body, validationResult } = require('express-validator');
let UserModel  = require('../../models/UserModel.js');

module.exports = function(app){
    const userModel = new UserModel();

    app.get('/admin/users/edit/:id', async (req, res) => {
        let user_id = parseInt(req.params.id);
        let user = await userModel.getUserById(user_id);

        if(!user){
            res.redirect('/admin/users');
        }else{
            res.render("admin/users/edit", {user});
        }
    });

    app.get('/admin/users/create', async (req, res) => {
        res.render("admin/users/create");
    });

    app.post('/admin/users/create', [
        body('first_name').notEmpty().trim(),
        body('last_name').notEmpty().trim(),
        body('email').notEmpty().trim(),
        body('password').notEmpty().trim().isLength({ min: 5 })
    ], async (req, res) => {
        let errors = validationResult(req);
        let hasEmail = await userModel.checkUserEmail();

        if(!errors.errors.length && !hasEmail){
            await userModel.insertUser(req.body);
            res.sendEmailForPassword(req.body.email, req.body.passsword);
            res.redirect('/admin/users');
        }else{
            if(hasEmail){
                errors.errors.push({
                    msg: 'email already has'
                });
            }

            res.render("admin/users/create", {errors:errors.errors});
        }
    });

    app.post('/admin/users/edit/:id', [
        body('first_name').not().isEmpty().trim(),
        body('last_name').not().isEmpty().trim(),
        body('email').not().isEmpty().trim(),
    ],  async (req, res) => {
        let errors = validationResult(req);
        let errorMessage = 'validator errors';
        let user_id = parseInt(req.params.id);

        if(!errors.errors.length){
            userModel.updateUser(user_id, req.body);
            res.redirect('/admin/users');
        }else{
            let user = await userModel.getUserById(user_id);
            res.render("admin/users/edit", {user, errorMessage});
        }
    });

    app.get('/admin/users', async (req, res) => {
        let users = await userModel.getAllUsers();

        res.render("admin/users/main", {users});
    });
};






