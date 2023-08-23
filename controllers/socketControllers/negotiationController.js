const {validate} = require('../../helpers/bodyValidationHelper');
const {negotiationJoinBody} = require('../../models/bodyValidation/negotiationBody');
const fs = require('fs');

exports.join = async function(req){
    const errors = await validate(req, [negotiationJoinBody]);
    if(errors.errors.length){
        req.response.validationErrors = errors.errors;
        return req.socket.emit('message1', req.response);
    }

    req.socket.join(req.body.conversationId);
    req.socket.to(req.body.conversationId).emit('message1', {
        'test': 'tes55t'
    });
};

exports.upload = async function(req){

    console.log(req.body.files[0]);

    await fs.writeFileSync("./tmp/upload/test.txt", req.body.files[0]);


    // const errors = await validate(req, [negotiationJoinBody]);
    // if(errors.errors.length){
    //     req.response.validationErrors = errors.errors;
    //     return req.socket.emit('message1', req.response);
    // }

    // req.socket.join(req.body.conversationId);
    // req.socket.to(req.body.conversationId).emit('message1', {
    //     'test': 'tes55t'
    // });
};
