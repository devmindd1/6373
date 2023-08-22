const ScenarioModel = require('../models/ScenarioModel');
const ScenarioRoleModel = require('../models/ScenarioRoleModel');
const {validationResult} = require('express-validator');

exports.index = async function(req, res){
    const scenarioModel = new ScenarioModel();
    const scenarioRoleModel = new ScenarioRoleModel();

    res.response.scenarios = await scenarioModel.getAll();

    for(const scenario of res.response.scenarios)
        scenario.roles = await scenarioRoleModel.getByScenarioId(scenario.id);

    return res.status(200).json(res.response);
};

exports.test = async function(req, res, next){
    const scenarioModel = new ScenarioModel();

    res.response.scenarios = await scenarioModel.getAll();

    return res.status(200).json(res.response);
};


