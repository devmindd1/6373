// module.exports = require('knex')({
//     client: 'mysql2',
//     connection: {
//         host : '127.0.0.1',
//         user : 'root',
//         password : '',
//         database : 'powerd',
//         multipleStatements: true
//     }
// });

module.exports = require('knex')({
    client: 'mysql2',
    connection: {
        host:'localhost',
        user: 'Powerd',
        database: 'powerd1',
        password: 'powerd',
        multipleStatements: true
    }
});