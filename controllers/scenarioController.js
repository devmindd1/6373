const {getWithRoles} = require('../services/scenarioService');
const ScenarioModel = require('../models/ScenarioModel');
const ScenarioRoleModel = require('../models/ScenarioRoleModel');

exports.getById = async function(req, res){
    const {scenarioId} = req.params;

    res.response.scenario = await getWithRoles(scenarioId);
    if(!res.response.scenario)
        return res.status(204).json(res.response);

    return res.status(200).json(res.response);
};

exports.getList = async function(req, res){
    const scenarioModel = new ScenarioModel();
    const scenarioRoleModel = new ScenarioRoleModel();

    res.response.scenarios = await scenarioModel.getAll();

    for(const scenario of res.response.scenarios)
        scenario.roles = await scenarioRoleModel.getByScenarioId(scenario.id);

    return res.status(200).json(res.response);
};