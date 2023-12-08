const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const db = require('./db');
const cargoController = require('./cargoController');
const hospitalController = require('./hospitalController');
const enfermariaController = require('./enfermariaController');
const pacienteController = require('./pacienteController');
const funcionarioController = require('./funcionarioController');

const app = express();
const PORT = 3000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.set('view engine', 'ejs');

// Rotas 

app.get('/styles/sidebar.css', (req, res) => {
  res.sendFile(path.join(__dirname, '/styles/sidebar.css'));
});

app.get('/views/index.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/index.html'));
});

app.get('/views/hospital.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/hospital.html'));
});

app.get('/views/hospital_2.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/hospital_2.html'));
});

app.get('/views/enfermaria.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/enfermaria.html'));
});

app.get('/views/enfermaria_2.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/enfermaria_2.html'));
});

app.get('/views/funcionario.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/funcionario.html'));
});

app.get('/views/funcionario_2.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/funcionario_2.html'));
});

app.get('/views/cargo.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/cargo.html'));
});

app.get('/views/cargo_2.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/cargo_2.html'));
});

app.get('/views/paciente.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/paciente.html'));
});

app.get('/views/paciente_2.html', (req, res) => {
  res.sendFile(path.join(__dirname, '/views/paciente_2.html'));
});


// Rotas dos Controladores

app.get('/api/hospitals', hospitalController.getAllHospitalsJSON);
app.get('/api/enfermarias', enfermariaController.getAllEnfermariasJSON);
app.get('/api/funcionarios', funcionarioController.getAllFuncionariosJSON);




// *********** Selects *********** \\ 

app.get('/views/hospital_2.html', async (req, res) => {
  try {
    const hospitals = await hospitalController.getAllHospitals();

    res.render(path.join(__dirname, '/views/hospital_2.html'), { hospitals });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.get('/views/enfermaria_2.html', async (req, res) => {
  try {
    const enfermarias = await enfermariaController.getAllEnfermarias();

    res.render(path.join(__dirname, '/views/enfermaria_2.html'), { enfermarias });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.get('/views/funcionario_2.html', async (req, res) => {
  try {
    const funcionarios = await funcionarioController.getAllFuncionarios();

    res.render(path.join(__dirname, '/views/funcionario_2.html'), { funcionarios });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.get('/views/cargo_2.html', async (req, res) => {
  try {
    const enfermarias = await enfermariaController.getAllCargos();

    res.render(path.join(__dirname, '/views/cargo_2.html'), { enfermarias });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.get('/views/paciente_2.html', async (req, res) => {
  try {
    const enfermarias = await enfermariaController.getAllEnfermarias();

    res.render(path.join(__dirname, '/views/paciente_2.html'), { enfermarias });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

// *********** Delete *********** \\ 

app.delete('/api/delete_hospital/:CDHOS', async (req, res) => {
  console.log('Rota /api/delete_hospital foi acessada');
  try {
    const hospitalCode = req.params.CDHOS;
    const result = await hospitalController.deleteHOS_HOSPITAL(hospitalCode);
    res.json({ success: true, result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.delete('/api/delete_enfermaria/:CDENF', async (req, res) => {
  console.log('Rota /api/delete_enfermaria foi acessada');
  try {
    const enfermariaCode = req.params.CDENF;
    const result = await enfermariaController.deleteHOS_ENFERMARIA(enfermariaCode);
    res.json({ success: true, result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.delete('/api/delete_funcionario/:NRISC', async (req, res) => {
  console.log('Rota /api/delete_funcionario foi acessada');
  try {
    const funcionarioCode = req.params.NRISC;
    
    const result = await funcionarioController.deleteFCO_FUNCIONARIO(funcionarioCode);
    res.json({ success: true, result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.delete('/api/delete_cargo/:NRCGO', async (req, res) => {
  console.log('Rota /api/delete_cargo foi acessada');
  try {
    const enfermariaCode = req.params.NRCGO;
    const result = await enfermariaController.deleteHOS_ENFERMARIA(enfermariaCode);
    res.json({ success: true, result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.delete('/api/delete_paciente/:NRMATPAC', async (req, res) => {
  console.log('Rota /api/delete_paciente foi acessada');
  try {
    const enfermariaCode = req.params.NRMATPAC;
    const result = await enfermariaController.deleteHOS_ENFERMARIA(enfermariaCode);
    res.json({ success: true, result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

// *********** Updates *********** \\ 

app.post('/api/update_hospital', async (req, res) => {
  console.log('Rota /api/update_hospital foi acessada');
  try {
      const updatedHospitalData = req.body;
      const result = await hospitalController.updateHOS_HOSPITAL(updatedHospitalData);
      res.json({ success: true, result });
  } catch (error) {
      res.status(500).json({ success: false, error: error.message });
  }
});

app.post('/api/update_enfermaria', async (req, res) => {
  console.log('Rota /api/update_enfermaria foi acessada');
  try {
    const updatedEnfermariaData = req.body;
    const result = await enfermariaController.updateHOS_ENFERMARIA(updatedEnfermariaData);
    res.json({ success: true, result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.post('/api/update_funcionario', async (req, res) => {
  console.log('Rota /api/update_funcionario foi acessado');
  try {
    const updatedFuncionarioData = req.body;
    const result = await funcionarioController.updateFCO_FUNCIONARIO(updatedFuncionarioData);
    res.json({ success: true, result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.post('/api/update_cargo', async (req, res) => {
  console.log('Rota /api/update_cargo foi acessado');
  try {
    const updatedCargoData = req.body;
    const result = await cargoController.updateFCO_CARGO(updatedCargoData);
    res.json({ success: true, result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

app.post('/api/update_paciente', async (req, res) => {
  console.log('Rota /api/update_paciente foi acessado');
  try {
    const updatedPacienteData = req.body;
    const result = await pacienteController.updatePAC_PACIENTE(updatedPacienteData);
    res.json({ success: true, result });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

// *********** Inserts *********** \\ 

app.post('/insert_hospital', async (req, res) => {
  console.log('Rota de Insert de Hospital Acessada!');
  try {
    const hospitalData = req.body;
    const result = await hospitalController.insertHOS_HOSPITAL(hospitalData);
    res.json({ success: true, result });
  } catch (error) {
    res.json({ success: false, error: error.message });
  }
});

app.post('/insert_enfermaria', async (req, res) => {
  console.log('Rota de Insert de Enfermaria Acessada!');
  try {
    const enfermariaData = req.body;
    const result = await enfermariaController.insertHOS_ENFERMARIA(enfermariaData);
    res.json({ success: true, result });
  } catch (error) {
    res.json({ success: false, error: error.message });
  }
});

app.post('/insert_funcionario', async (req, res) => {
  console.log('Rota de Insert de Funcionario Acessada!');
  try {
    const funcionarioData = req.body;
    const result = await funcionarioController.insertFCO_FUNCIONARIO(funcionarioData);
    res.json({ success: true, result });
  } catch (error) {
    res.json({ success: false, error: error.message });
  }
});

app.post('/insert_cargo', async (req, res) => {
  try {
    const cargoData = req.body;
    const result = await cargoController.insertFCO_CARGO(cargoData);
    res.json({ success: true, result });
  } catch (error) {
    res.json({ success: false, error: error.message });
  }
});

app.post('/insert_paciente', async (req, res) => {
  try {
    const pacienteData = req.body;
    const result = await pacienteController.insertPAC_PACIENTE(pacienteData);
    res.json({ success: true, result });
  } catch (error) {
    res.json({ success: false, error: error.message });
  }
});


app.listen(PORT, '192.168.1.16', () => {
  console.log(`Server is running on http://192.168.1.16:${PORT}/views/index.html`);
});
