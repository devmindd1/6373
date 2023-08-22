const Model = require('../core/Model');
const NegotiationModel = require('../models/NegotiationModel');

class NegotiationUserModel extends Model{
    constructor(){
        super('negotiation_users');

        this._user_roles = {
            'creator': 'creator',
            'responder': 'responder'
        };
    }

    async checkUserBelongs(id, userId){
        const [user] = await this.t.select('*').where({id: id, user_id: userId});

        return user;
    }

    async checkUserBelongsNegotiation(userId, negotiationId){
        const [user] = await this.t.select('*')
            .where({user_id: userId, negotiation_id: negotiationId});

        return user;
    }

    getPassRoleList(userId, roleId){
        const negotiationStatus = NegotiationModel._statuses['ended'];

        let q = `SELECT f_negotiations.id AS negotiations_id
                 FROM negotiation_users
                     INNER JOIN (
                        SELECT id, created_timestamp
                        FROM negotiations 
                        WHERE negotiations.status = ${negotiationStatus} 
                     ) AS f_negotiations 
                     ON negotiation_users.negotiation_id = f_negotiations.id 
                 WHERE
                     scenario_role_id = ${roleId} 
                     AND negotiation_users.user_id = ${userId}
                     ORDER BY f_negotiations.created_timestamp`;

        return this.exec(q);
    }

    getUserPassRolesGroup(userId, groupByRolesFlag = true){
        const negotiationStatus = NegotiationModel._statuses['ended'];
        const groupByRoles =  groupByRolesFlag ? `GROUP BY f_negotiation_users.scenario_role_id`: ``;

        let q = `SELECT f_negotiation_users.scenario_role_id, scenarios.id AS scenario_id, 
                    scenarios.title AS scenario_roles,
                    scenario_roles.title AS scenario_roles_title
                 FROM(
                     SELECT negotiation_users.scenario_role_id,  negotiation_users.user_id
                     FROM negotiation_users
                     INNER JOIN ( 
                       SELECT id 
                       FROM negotiations 
                       WHERE status = ${negotiationStatus} 
                     ) AS f_negotiations
                       ON negotiation_users.negotiation_id = f_negotiations.id
                 ) AS f_negotiation_users
                 LEFT JOIN scenario_roles 
                   ON f_negotiation_users.scenario_role_id = scenario_roles.id
                 LEFT JOIN scenarios 
                   ON scenario_roles.scenario_id = scenarios.id
                 WHERE f_negotiation_users.user_id = ${userId}
                 ${groupByRoles}`;

        return this.exec(q);
    }
}

module.exports = NegotiationUserModel;