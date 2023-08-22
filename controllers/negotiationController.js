const NegotiationModel = require('../models/NegotiationModel');
const ScenarioModel = require('../models/ScenarioModel');
const NegotiationUserModel = require('../models/NegotiationUserModel');
const {validationResult} = require('express-validator');
const {getWithRoles} = require('../services/scenarioService');
const {randomString} = require('../helpers/stringHelper');

exports.getForJoin = async function(req, res){
    const negotiationModel = new NegotiationModel();
    const {negotiationId} = req.params;

    res.response.negotiation = await negotiationModel.getByIdForJoin(negotiationId);
    if(!res.response.negotiation)
        return res.status(204).json(res.response);

    res.response.scenario = await getWithRoles(res.response.negotiation.scenario_id);

    return res.status(200).json(res.response);
};

exports.getAvailable = async function(req, res){
    const {negotiationAvailable, role, level, sort} = req.body;
    const negotiationModel = new NegotiationModel();

    res.response.rates = ScenarioModel._RATE_TYPES;
    res.response.negotiations = await negotiationModel.getAllAvailable(negotiationAvailable, role, level, sort);

    return res.status(200).json(res.response);
};

exports.insert = async function(req, res){
    const negotiationModel = new NegotiationModel();
    const negotiationUserModel = new NegotiationUserModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.response.validationErrors = errors.array();
        return res.status(400).json(res.response);
    }

    const negotiationId =  await negotiationModel.insert({
        scenario_id: req.body.scenario_id,
        status: NegotiationModel._statuses['waiting_for_responder'],
        created_timestamp: parseInt(new Date().getTime()/1000),
        uuid: randomString(16),
        waiting_timestamp: req.body.waiting_timestamp,
        duration_timestamp: req.body.duration_timestamp,
        video_flag: parseInt(req.body.video_flag) || 0,
        messaging_flag: parseInt(req.body.messaging_flag) || 0,
        notification_flag: parseInt(req.body.notification_flag) || 0
    });

    await negotiationUserModel.insert({
        user_id: req.user.id,
        user_role: negotiationUserModel._user_roles['creator'],
        negotiation_id: negotiationId,
        scenario_role_id: req.body.scenario_role_id,
        laa: req.body.laa || '',
        batna: req.body.batna || '',
        personal_goals: req.body.personal_goals || '',
        goal_for_partner: req.body.goal_for_partner || '',
        goal_for_supervisor: req.body.goal_for_supervisor || '',
    });

    return res.status(200).json(res.response);
};

exports.join = async function(req, res){
    const negotiationModel = new NegotiationModel();
    const negotiationUserModel = new NegotiationUserModel();

    const errors = validationResult(req);
    if(!errors.isEmpty()){
        res.response.validationErrors = errors.array();
        return res.status(400).json(res.response);
    }

    await negotiationUserModel.insert({
        user_id: req.user.id,
        user_role: negotiationUserModel._user_roles['responder'],
        negotiation_id: req.body.negotiation_id,
        scenario_role_id: req.body.scenario_role_id,
        laa: req.body.laa || '',
        batna: req.body.batna || '',
        personal_goals: req.body.personal_goals || '',
        goal_for_partner: req.body.goal_for_partner || '',
        goal_for_supervisor: req.body.goal_for_supervisor || '',
    });

    await negotiationModel.update(req.body.negotiation_id, {
        status: NegotiationModel._statuses['started']
    });

    return res.status(200).json(res.response);
};