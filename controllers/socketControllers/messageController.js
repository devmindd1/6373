const {validate} = require('../../helpers/bodyValidationHelper');
const {messageInsertBody} = require('../../models/bodyValidation/messageBody');
const MessageModel = require('../../models/MessageModel');
const NegotiationUserModel = require('../../models/NegotiationUserModel');
const NegotiationModel = require('../../models/NegotiationModel');

exports.getByNegotiation = async function(req){
    const {negotiationUuid} = req.body;
    const {offset} = req.body;

    const messageModel = new MessageModel();
    const negotiationModel = new NegotiationModel();
    const negotiationUserModel = new NegotiationUserModel();

    const negotiation = await negotiationModel.getByUuid(negotiationUuid);
    if(!negotiation)
        req.response.errorMessage = 'test';

    const userBelongs = await negotiationUserModel.checkUserBelongsNegotiation(negotiation.id, req.socket.user.id);
    if(!userBelongs)
        req.response.errorMessage = 'test';



    req.response.messages = await messageModel.getByNegotiation(negotiation.id);


    console.log(req.response.messages);
    // console.log(negotiation.id);
    // console.log(req.socket.user.id);

    return req.socket.emit(req.name, req.response);
};


exports.test = async function(req){

    const errors = await validate(req, [messageInsertBody]);
    if(errors.errors.length){
        req.response.validationErrors = errors.errors;
        return req.socket.emit('message1', req.response);
    }


    return req.socket.emit('message12', req.response);

    // if(errors.errors.length){
    //     socket.emit('message1', {
    //         test: 'test'
    //     });
    // }




    // console.log(errors);
    // errors.errors = [];

    // console.log(res.response);

    // res.response.validationErrors.push('test');
    // const errors = validationResult(req);
    // if(!errors.isEmpty()){
    //     response.validationErrors = errors.array();
    //     return res.status(400).json(response);
    // }




    // return res.status(200).json(res.response);
};


