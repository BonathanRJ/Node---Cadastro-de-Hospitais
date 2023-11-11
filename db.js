// db.js
const mysql = require('mysql2/promise');

async function connect() {
  if (global.connection && global.connection.state !== 'disconnected')
    return global.connection;

  const connection = await mysql.createConnection({
    host: '127.0.0.1',
    port: 3306,
    user: 'root',
    password: '123456',
    database: 'database_hospital',
  });

  console.log('Conectou ao MySQL! Porta:', connection.config.port);

  global.connection = connection;
  return connection;
}

module.exports = { connect };
