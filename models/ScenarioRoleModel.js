const Model = require('../core/Model');

class ScenarioRoleModel extends Model{
    constructor(){ super('scenario_roles'); }

    async getByScenarioId(scenarioId){
        const roles = await this.t.select('*').where({'scenario_id': scenarioId});

        this.freeResult();

        return roles;
    }

    async getById(id){
        const [scenarioRole] = await this.t.select('*').where({id: id});

        return scenarioRole;
    }
}

module.exports = ScenarioRoleModel;