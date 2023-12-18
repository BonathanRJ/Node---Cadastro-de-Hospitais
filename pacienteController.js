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

async function updatePAC_PACIENTE(updatedPacienteData) {
  const conn = await db.connect();
  const sql = `
    UPDATE PAC_PACIENTE
    SET
      IDHOS = ?,
      CDHOS = ?,
      IDENF = ?,
      CDENF = ?,
      NRMATPAC = ?,
      NMPAC = ?,
      DTNSCPAC = ?,
      TPSEXPAC = ?,
      NRCPFPAC = ?,
      DTISCPAC = ?,
      NMPAI = ?,
      NMMAE = ?,
      DCLOGPAC = ?,
      NRLOGPAC = ?,
      DCBAIPAC = ?,
      DCCIDPAC = ?,
      CDPSIPAC = ?,
      NRCEPPAC = ?,
      SGUFSPAC = ?,
      NRTELRSDPAC = ?,
      NRTELCOMPAC = ?,
      DCEMLPAC = ?,
      AUUSUULTALT = ?,
      AUDATULTALT = STR_TO_DATE(?, '%Y-%m-%d')
    WHERE IDHOS = ?;
  `;

  const values = [
    updatedPacienteData.IDHOS,
    updatedPacienteData.CDHOS,
    updatedPacienteData.IDENF,
    updatedPacienteData.CDENF,
    updatedPacienteData.NRMATPAC,
    updatedPacienteData.NMPAC,
    updatedPacienteData.DTNSCPAC,
    updatedPacienteData.TPSEXPAC,
    updatedPacienteData.NRCPFPAC,
    updatedPacienteData.DTISCPAC,
    updatedPacienteData.NMPAI,
    updatedPacienteData.NMMAE,
    updatedPacienteData.DCLOGPAC,
    updatedPacienteData.NRLOGPAC,
    updatedPacienteData.DCBAIPAC,
    updatedPacienteData.DCCIDPAC,
    updatedPacienteData.CDPSIPAC,
    updatedPacienteData.NRCEPPAC,
    updatedPacienteData.SGUFSPAC,
    updatedPacienteData.NRTELRSDPAC,
    updatedPacienteData.NRTELCOMPAC,
    updatedPacienteData.DCEMLPAC,
    updatedPacienteData.AUUSUULTALT,
    updatedPacienteData.AUDATULTALT,
    updatedPacienteData.IDHOS,
  ];

  try {
    const result = await conn.query(sql, values);
    return { success: true, message: 'Paciente atualizado com sucesso.' };
  } catch (error) {
    console.error('Erro na atualização do paciente:', error);
    throw new Error('Erro na atualização do paciente.');
  } finally {
    conn.release();
  }
}
  
async function deletePAC_PACIENTE(patientId) {
  const conn = await db.connect();
  const sql = 'DELETE FROM PAC_PACIENTE WHERE IDHOS = ?';

  try {
    const result = await conn.query(sql, [patientId]);
    return { success: true, message: 'Paciente excluído com sucesso.' };
  } catch (error) {
    console.error('Erro na exclusão do paciente:', error);
    throw new Error('Erro na exclusão do paciente.');
  } finally {
    conn.release();
  }
}

async function insertPAC_PACIENTE(paciente) {
    const conn = await db.connect();
    const sql = 'INSERT INTO PAC_PACIENTE (IDHOS, CDHOS, IDENF, CDENF, NRMATPAC, NMPAC, DTNSCPAC, TPSEXPAC, NRCPFPAC, DTISCPAC, NMPAI, NMMAE, DCLOGPAC, NRLOGPAC, DCBAIPAC, DCCIDPAC, CDPSIPAC, NRCEPPAC, SGUFSPAC, NRTELRSDPAC, NRTELCOMPAC, DCEMLPAC, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);';
    const values = [
        paciente.IDHOS, paciente.CDHOS, paciente.IDENF, paciente.CDENF, paciente.NRMATPAC, paciente.NMPAC, paciente.DTNSCPAC,
        paciente.TPSEXPAC, paciente.NRCPFPAC, paciente.DTISCPAC, paciente.NMPAI, paciente.NMMAE, 
        paciente.DCLOGPAC, paciente.NRLOGPAC, paciente.DCBAIPAC, paciente.DCCIDPAC, paciente.CDPSIPAC, paciente.NRCEPPAC,
        paciente.SGUFSPAC, paciente.NRTELRSDPAC, paciente.NRTELCOMPAC, paciente.DCEMLPAC, paciente.AUUSUULTALT, paciente.AUDATULTALT
    ];
    return await conn.query(sql, values);
}

module.exports = { selectPAC_PACIENTE, insertPAC_PACIENTE, getAllPacientes, getAllPacientesJSON, updatePAC_PACIENTE, deletePAC_PACIENTE };
