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

    updateUserToken(userId, token){
        return this.t.update({
            'refresh_token': token
        }).where({id: userId});
    }

    getAll(){
        return this.db('users').select('*').where({role: _TYPES['user']});
    }

    getUserByRefreshToken(refreshToken){
        return this.t.select('*').where({refresh_token: refreshToken});
    }

    async getUserByEmail(email){
        const users = await this.db('users').where({email: email});

        return users.length;
    }

    updateRefreshToken(id, refreshToken){
        return this.t.update({
            'refresh_token': refreshToken
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
        const [user] = await this.t.select('*').where({id: id});

        return user;
    }

    updateById(id, data){
        return this.t.update(data).where({id: id});
    }
}

module.exports = UserModel;