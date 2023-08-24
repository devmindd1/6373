const Model = require('../core/Model');
const _TYPES = {
    'admin': 'admin',
    'user': 'user'
};

class UserModel extends Model{
    constructor(){ super('users'); }

    getAdminByEmailPassword(email, password){
        return this.t.select('*').where({
            email: email,
            password: password,
            role: _TYPES['admin']
        });
    }

    getAll(){
        return this.db('users').select('*').where({role: _TYPES['user']});
    }

    async getUserByAccessToken(accessToken){
        const [user] =  await this.t.select('*').where({access_token: accessToken});

        return user;
    }

    async getUserByEmail(email){
        const users = await this.db('users').where({email: email});

        return users.length;
    }

    updateAccessToken(id, accessToken){
        return this.t.update({
            'access_token': accessToken
        }).where({id: id});
    }

    async insert(data){
        const [id] = await this.t.insert(data);

        this.freeResult();

        const [user] = await this.t.select('*').where({id: id});

        return user;
    }

    async getByEmail(email){
        const [user] = await this.t.select('*').where({email: email});

        return user;
    }

    async getById(id){
        const [user] = await this.t.select('first_name', 'last_name', 'email', 'company', 'address', 'country_id')
            .where({id: id});

        return user;
    }

    async getAllById(id){
        const [user] = await this.t.select('*')
            .where({id: id});

        return user;
    }

    updateById(id, data){
        return this.t.update(data).where({id: id});
    }
}

module.exports = UserModel;