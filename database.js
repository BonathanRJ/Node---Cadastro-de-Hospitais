const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: '127.0.0.1',
  user: 'root',
  password: '123456',
  database: 'database_hospital',
});

connection.connect((err) => {
  if (err) {
    console.error('Erro na conexão com o banco de dados:', err);
    return;
  }

  console.log('Conectado ao banco de dados MySQL');
});

const sqlQuery = 'SELECT * FROM fco_cargo';
connection.query(sqlQuery, (err, results) => {
  if (err) {
    console.error('Erro na consulta:', err);
    return;
  }

  console.log('Resultados da consulta:', results);
});

connection.end((err) => {
  if (err) {
    console.error('Erro ao fechar a conexão com o banco de dados:', err);
  }

  console.log('Conexão com o banco de dados encerrada');
});
