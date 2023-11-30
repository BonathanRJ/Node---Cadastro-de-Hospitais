// hospitalController.js
const db = require('./db');

async function selectHOS_HOSPITAL() {
  const conn = await db.connect();
  const [rows] = await conn.query('SELECT * FROM HOS_HOSPITAL;');
  return rows;
}

async function getAllHospitals() {
  const hospitals = await selectHOS_HOSPITAL();
  return hospitals;
}

async function getAllHospitalsJSON(req, res) {
  try {
    const hospitals = await getAllHospitals();
    res.json({ success: true, hospitals });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
}

async function updateHOS_HOSPITAL(updatedHospitalData) {
  const conn = await db.connect();
  const sql = `
      UPDATE HOS_HOSPITAL
      SET DCHOS = ?,
          NRLOGHOS = ?,
          DCLOGHOS = ?,
          NRCEPHOS = ?,
          DCBAIHOS = ?,
          DCCIDHOS = ?,
          SGUFSHOS = ?,
          CDPSIHOS = ?,
          NRTELHOS = ?,
          AUUSUULTALT = ?,
          AUDATULTALT = STR_TO_DATE(?, '%Y-%m-%d')
      WHERE CDHOS = ?;
  `;
  const values = [
      updatedHospitalData.DCHOS,
      updatedHospitalData.NRLOGHOS,
      updatedHospitalData.DCLOGHOS,
      updatedHospitalData.NRCEPHOS,
      updatedHospitalData.DCBAIHOS,
      updatedHospitalData.DCCIDHOS,
      updatedHospitalData.SGUFSHOS,
      updatedHospitalData.CDPSIHOS,
      updatedHospitalData.NRTELHOS,
      updatedHospitalData.AUUSUULTALT,
      updatedHospitalData.AUDATULTALT,
      updatedHospitalData.CDHOS,
  ];

  try {
      const result = await conn.query(sql, values);
      return { success: true, message: 'Hospital atualizado com sucesso.' };
  } catch (error) {
      console.error('Erro na atualização do hospital:', error);
      throw new Error('Erro na atualização do hospital.');
  } finally {
      conn.release();
  }
}


async function deleteHOS_HOSPITAL(hospitalCode) {
  const conn = await db.connect();
  const sql = 'DELETE FROM HOS_HOSPITAL WHERE CDHOS = ?';

  try {
    const result = await conn.query(sql, [hospitalCode]);
    return { success: true, message: 'Hospital excluído com sucesso.' };
  } catch (error) {
    console.error('Erro na exclusão do hospital:', error);
    throw new Error('Erro na exclusão do hospital.');
  } finally {
    conn.release();
  }
}

async function insertHOS_HOSPITAL(hospital) {
  const conn = await db.connect();
  const sql = 'INSERT INTO HOS_HOSPITAL (CDHOS, DCHOS, NRLOGHOS, DCLOGHOS, NRCEPHOS, DCBAIHOS, DCCIDHOS, SGUFSHOS, CDPSIHOS, NRTELHOS, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?,?,?,?,?,?,?,?,?);';
  const values = [hospital.CDHOS, hospital.DCHOS, hospital.NRLOGHOS, hospital.DCLOGHOS, hospital.NRCEPHOS, hospital.DCBAIHOS, hospital.DCCIDHOS, hospital.SGUFSHOS, hospital.CDPSIHOS, hospital.NRTELHOS, hospital.AUUSUULTALT, hospital.AUDATULTALT];
  return await conn.query(sql, values);
}

module.exports = { selectHOS_HOSPITAL, insertHOS_HOSPITAL, getAllHospitals, getAllHospitalsJSON,  updateHOS_HOSPITAL, deleteHOS_HOSPITAL };

