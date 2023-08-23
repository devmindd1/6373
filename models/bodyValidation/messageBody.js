const {body} = require("express-validator");

const messageInsertBody = [
    // body('text').optional({checkFalsy: true})
    //     .withMessage('test validation')
];

module.exports = {
    messageInsertBody
};
