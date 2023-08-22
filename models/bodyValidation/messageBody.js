const {body} = require("express-validator");

const messageInsertBody = [
    body('text').notEmpty()
        .withMessage('text is require'),
];

module.exports = {
    messageInsertBody
};
