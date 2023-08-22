const Model = require('../core/Model');

class MessageModel extends Model{
    constructor(){ super('messages'); }

    async getByNegotiation(negotiationId){
        return this.t
            .select('id', 'user_id', 'text', 'has_sources', 'status', 'created_date')
            .where({negotiation_id: negotiationId})
            .orderBy('id', 'DESC')
            .limit(10)
            .offset(0);
    }
}

module.exports = MessageModel;