// pacienteController.js
const db = require('./db');

async function selectPAC_PACIENTE() {
    const conn = await db.connect();
    const [rows] = await conn.query('SELECT * FROM PAC_PACIENTE;');
    return rows;
  }
  
  async function getAllPacientes() {
    const pacientes = await selectPAC_PACIENTE();
    return pacientes;
  }
  
  async function getAllPacientesJSON(req, res) {
    try {
      const pacientes = await getAllPacientes();
      res.json({ success: true, pacientes });
    } catch (error) {
      res.status(500).json({ success: false, error: error.message });
    }
  }

async function insertPAC_PACIENTE(paciente) {
    const conn = await db.connect();
    const sql = 'INSERT INTO PAC_PACIENTE (IDHOS, CDHOS, IDENF, CDENF, NRMATPAC, NMPAC, DTNSCPAC, TPSEXPAC, NRCPFPAC, DTISCPAC, NMPAI, NMMAE, DTFALPAC, DCLOGPAC, NRLOGPAC, DCBAIPAC, DCCIDPAC, CDPSIPAC, NRCEPPAC, SGUFSPAC, NRTELRSDPAC, NRTELCOMPAC, DCEMLPAC, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);';
    const values = [
        paciente.IDHOS, paciente.CDHOS, paciente.IDENF, paciente.CDENF, paciente.NRMATPAC, paciente.NMPAC, paciente.DTNSCPAC,
        paciente.TPSEXPAC, paciente.NRCPFPAC, paciente.DTISCPAC, paciente.NMPAI, paciente.NMMAE, paciente.DTFALPAC,
        paciente.DCLOGPAC, paciente.NRLOGPAC, paciente.DCBAIPAC, paciente.DCCIDPAC, paciente.CDPSIPAC, paciente.NRCEPPAC,
        paciente.SGUFSPAC, paciente.NRTELRSDPAC, paciente.NRTELCOMPAC, paciente.DCEMLPAC, paciente.AUUSUULTALT, paciente.AUDATULTALT
    ];
    return await conn.query(sql, values);
}

module.exports = { selectPAC_PACIENTE, insertPAC_PACIENTE };
