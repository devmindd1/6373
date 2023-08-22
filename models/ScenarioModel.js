const Model = require('../core/Model');

class ScenarioModel extends Model{
    static _RATE_TYPES = {
        1:{
            rate: 1,
            name: 'beginner'
        },
        2:{
            rate: 2,
            name: 'intermediate'
        },
        3:{
            rate: 3,
            name: 'advanced'
        },
    };

    constructor(){
        super('scenarios');
    }

    async getById(id){
        const [scenario] = await this.t.select('*').where({id: id});

        if(scenario)
            scenario.rate = ScenarioModel._RATE_TYPES[scenario.rate];

        return scenario;
    }
}

module.exports = ScenarioModel;