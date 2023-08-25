const bcrypt = require('bcrypt');
const {body} = require("express-validator");
const UserModel = require("../../models/UserModel");

const updateBody = [
    body('first_name').notEmpty()
        .withMessage('First name is require'),
    body('country_id').isInt().optional({checkFalsy: true})
        .withMessage('country_id is integer'),
    body('last_name').notEmpty()
        .withMessage('Last name is require'),
];

const loginBody = [
    body('email').notEmpty()
        .withMessage('Email is require'),
    body('password').notEmpty()
        .withMessage('Password is require'),
];

const resetPasswordBody = [
    body('old_password').notEmpty()
        .withMessage('Old password is require'),
    body('old_password').custom(async (value, {req}) => {
        const userModel = new UserModel();
        const user = await userModel.getAllById(req.user.id);

        const isPassEquals = await bcrypt.compare(value, user.password);

        if(!isPassEquals)
            throw new Error('Old password wrong');
    }),
    body('password').notEmpty()
        .withMessage('Password is require'),
    body('confirm_password').notEmpty()
        .withMessage('confirm_password require'),
    body('confirm_password').custom(async (value, {req}) => {
        if(req.body.password !== value)
            throw new Error('Password dont much the confirm_password');
    }),
];

const signUpBody = [
    body('email').notEmpty()
        .withMessage('Email is require'),
    body('email').isEmail().normalizeEmail().withMessage('please write true email')
        .custom(async value => {
            const userModel = new UserModel();

            return userModel.getByEmail(value).then(user => {
                if(user) throw new Error('Email is exists');
            });
        }),
    body('firstName').notEmpty()
        .withMessage('First name is require'),
    body('country_id').isInt().optional({checkFalsy: true})
        .withMessage('country_id is integer'),
    body('lastName').notEmpty()
        .withMessage('Last name is require'),
    body('password').isLength({ min: 6 })
        .withMessage('password min size 6 symbols'),
    body('password').notEmpty()
        .withMessage('Password is require'),
    body('confirm_password').notEmpty()
        .withMessage('confirm_password require'),
    body('confirm_password').custom(async (value, {req}) => {
        if(req.body.password !== value)
            throw new Error('Password dont much the confirm_password');
    }),
];

const adminLoginBody = [
    body('email').notEmpty()
        .withMessage('Email is require'),
    body('password').notEmpty()
        .withMessage('Password is require'),
];

module.exports = {
    loginBody,
    signUpBody,
    adminLoginBody,
    resetPasswordBody,
    updateBody
};
