app.get('/lista', async (req, res) => {
    try {
      const connection = await mysql.createConnection(dbConfig);
  
      const [rows] = await connection.execute('SELECT * FROM FCO_CARGO');
  
      await connection.end();
      
      res.render('lista', { dados: rows });
    } catch (err) {
      console.error(err);
      res.status(500).send('Erro ao recuperar os dados do banco de dados.');
    }
    app.get('/form.html', (req, res) => {
        res.sendFile(__dirname + '/form.html');
      });
      
  });
  