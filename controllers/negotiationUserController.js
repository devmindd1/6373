const NegotiationUserModel = require('../models/NegotiationUserModel');
const {validationResult} = require('express-validator');

exports.update = async function(req, res){
    const negotiationUserModel = new NegotiationUserModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.response.validationErrors = errors.array();
        return res.status(400).json(res.response);
    }

    await negotiationUserModel.update(req.body.negotiation_user_id, req.body);

    return res.status(200).json(res.response);
};

exports.getPassRoles = async function(req, res){
    const negotiationUserModel = new NegotiationUserModel();

    res.response.roles = await negotiationUserModel.getUserPassRolesGroup(req.user.id);

    return res.status(200).json(res.response);
};

exports.getPassRole = async function(req, res){
    const {scenarioRoleId} = req.params;
    const negotiationUserModel = new NegotiationUserModel();

    res.response.roles = await negotiationUserModel.getPassRoleList(req.user.id, scenarioRoleId);

    return res.status(200).json(res.response);
};