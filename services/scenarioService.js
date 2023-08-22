const ScenarioRoleModel = require('../models/ScenarioRoleModel');
const ScenarioModel = require('../models/ScenarioModel');

exports.getWithRoles = async function(scenarioId){
    const scenarioModel = new ScenarioModel();
    const scenarioRoleModel = new ScenarioRoleModel();

    const scenario = await scenarioModel.getById(scenarioId);
    if(scenario)
        scenario.roles = await scenarioRoleModel.getByScenarioId(scenario.id);

    return scenario;
};