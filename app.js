const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
const app = express();

app.use(bodyParser.urlencoded({ extended: true }));

// Configurar a conexão com o banco de dados MySQL
const db = mysql.createConnection({
  host: '127.0.0.1',
  user: 'root',
  password: '123456',
  database: 'database_hospital',
});

db.connect((err) => {
    if (err) {
        console.error('Erro ao conectar ao banco de dados: ' + err.message);
        return;
    }
    console.log('Conexão com o banco de dados MySQL estabelecida');
});

// Rota para exibir o formulário
app.get('/inserir_cargo', (req, res) => {
    res.sendFile(__dirname + '/insert_cargo.html');
});

// Rota para lidar com a inserção de dados
app.post('/inserir_cargo', (req, res) => {
    const { nrcgo, dccgo, auusuultalt } = req.body;
    const sql = 'INSERT INTO FCO_CARGO (NRCGO, DCCGO, AUUSUULTALT, AUDATULTALT) VALUES (?, ?, ?, NOW())';
    const values = [nrcgo, dccgo, auusuultalt];

    db.query(sql, values, (err, result) => {
        if (err) {
            console.error('Erro ao inserir dados: ' + err.message);
            res.send('Erro ao inserir dados.');
        } else {
            console.log('Dados inseridos com sucesso.');
            res.send('Dados inseridos com sucesso.');
        }
    });
});

const port = 3000;
app.listen(port, () => {
    console.log(`Servidor Node.js em execução na porta ${port}`);
});
