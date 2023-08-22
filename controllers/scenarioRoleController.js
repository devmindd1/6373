const ScenarioRoleModel = require('../models/ScenarioRoleModel');

exports.getById = async function(req, res){
    const {scenarioRoleId} = req.query;
    const scenarioRoleModel = new ScenarioRoleModel();

    res.response.scenarioRole = await scenarioRoleModel.getById(scenarioRoleId);
    if(!res.response.scenarioRole)
        return res.status(204).json(res.response);

    return res.status(200).json(res.response);
};