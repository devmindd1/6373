module.exports = require('knex')({
    client: 'mysql2',
    connection: {
        host : '127.0.0.1',
        user : 'root',
        password : '',
        database : 'powerd',
        multipleStatements: true
    }
});

// module.exports = require('knex')({
//     client: 'mysql2',
//     connection: {
//         host:'localhost',
//         user: 'chrome',
//         database: 'chrome_ext',
//         password: 'eiwojo_hiSh4to9A',
//         multipleStatements: true
//     }
// });