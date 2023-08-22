const Model = require('../core/Model');

class NegotiationModel extends Model {
    static _statuses = {
        'waiting_for_responder': 0,
        'started': 1,
        'ended': 2
    };

    constructor() {
        super('negotiations');

        this._sort = {
            'rate': 'scenarios.rate',
            'title': 'f_scenarios.title',
            'available_timestamp': 'available_timestamp'
        };
    }

    async getByUuid(negotiationUuid){
        const [negotiation] = await this.t.select('id').where({uuid: negotiationUuid});

        return negotiation;
    }

    getAllAvailable(negotiationAvailable, roleIds, rateIds, orderBy = '') {

        // {
        //     "role": [],
        //     "sort": ["title", 0],
        //     "level": [1]
        // }

        // negotiationAvailable = negotiationAvailable || [];
        rateIds && rateIds.length ? rateIds = ` WHERE rate IN (` + rateIds.join(', ') + `)` : '';
        roleIds && roleIds.length ? roleIds = ` WHERE id IN (` + roleIds.join(', ') + `)` : '';
        orderBy ? orderBy = ` ORDER BY ` + this._sort[orderBy[0]] + ' ' + this._SORT_TYPES[orderBy[1]]: '';

        let q = `SELECT f_negotiations.id, f_negotiations.available_timestamp, f_scenarios.title,
                        f_scenarios.rate, f_scenario_roles.id as available_role_id, 
                        f_scenario_roles.title AS available_role_title
                 FROM ( 
                      SELECT id, scenario_id, 
                             ((created_timestamp + waiting_timestamp) - UNIX_TIMESTAMP()) AS available_timestamp
                      FROM negotiations
                      WHERE status = 0 
                            AND (created_timestamp + waiting_timestamp) > UNIX_TIMESTAMP()
                 ) AS f_negotiations
                 INNER JOIN negotiation_users 
                 ON f_negotiations.id = negotiation_users.negotiation_id
                 INNER JOIN ( 
                      SELECT id, rate, title 
                      FROM scenarios
                      ${rateIds}
                 ) AS f_scenarios
                 ON f_negotiations.scenario_id = f_scenarios.id
                 INNER JOIN ( 
                      SELECT id, title, scenario_id
                      FROM scenario_roles
                      ${roleIds}
                 ) AS f_scenario_roles 
                 ON f_negotiations.scenario_id = f_scenario_roles.scenario_id
                 AND f_scenario_roles.id != negotiation_users.scenario_role_id
                 ${orderBy}`;

        return this.exec(q);
    }

    async getByIdForJoin(id){
        const [negotiation] = await this.t.select('*').where({
            id: id,
            status: NegotiationModel._statuses['waiting_for_responder']
        });

        return negotiation;
    }

    async getById(id){
        const [negotiation] = await this.t.select('*').where({id: id});

        return negotiation;
    }
}

module.exports = NegotiationModel;