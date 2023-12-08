// enfermariaController.js
const db = require('./db');

async function selectHOS_ENFERMARIA() {
    const conn = await db.connect();
    const [rows] = await conn.query('SELECT * FROM HOS_ENFERMARIA;');
    return rows;
}

async function getAllEnfermarias() {
    const enfermarias = await selectHOS_ENFERMARIA();
    return enfermarias;
}

async function getAllEnfermariasJSON(req, res) {
    try {
      const enfermarias = await getAllEnfermarias();
      res.json({ success: true, enfermarias });
    } catch (error) {
      res.status(500).json({ success: false, error: error.message });
    }
}

async function updateHOS_ENFERMARIA(updatedEnfermariaData) {
  const conn = await db.connect();
  const sql = `
      UPDATE HOS_ENFERMARIA
      SET IDHOS = ?,
          CDHOS = ?,
          DCBLO = ?,
          AUUSUULTALT = ?,
          AUDATULTALT = ?
      WHERE CDENF = ?;
  `;
  const values = [
      updatedEnfermariaData.IDHOS,
      updatedEnfermariaData.CDHOS,
      updatedEnfermariaData.DCBLO,
      updatedEnfermariaData.AUUSUULTALT,
      updatedEnfermariaData.AUDATULTALT,
      updatedEnfermariaData.CDENF,
  ];

  try {
    const result = await conn.query(sql, values);
    return { success: true, message: 'Enfermaria atualizada com sucesso.' };
} catch (error) {
    console.error('Erro na atualização da enfermaria:', error);
    throw new Error('Erro na atualização da enfermaria.');
} finally {
    conn.release();
}
}

async function deleteHOS_ENFERMARIA(enfermariaCode) {
    const conn = await db.connect();
    const sql = 'DELETE FROM HOS_ENFERMARIA WHERE CDENF = ?';
  
    try {
      const result = await conn.query(sql, [enfermariaCode]);
      return { success: true, message: 'Enfermaria excluída com sucesso.' };
    } catch (error) {
      console.error('Erro na exclusão da enfermaria:', error);
      throw new Error('Erro na exclusão da enfermaria.');
    } finally {
      conn.release();
    }
}

async function insertHOS_ENFERMARIA(enfermaria) {
    const conn = await db.connect();
    const sql = 'INSERT INTO HOS_ENFERMARIA (CDENF, IDHOS, CDHOS, DCBLO, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?,?,?);';
    const values = [enfermaria.CDENF, enfermaria.IDHOS, enfermaria.CDHOS, enfermaria.DCBLO, enfermaria.AUUSUULTALT, enfermaria.AUDATULTALT];
    return await conn.query(sql, values);
}

module.exports = { selectHOS_ENFERMARIA, insertHOS_ENFERMARIA, getAllEnfermarias, getAllEnfermariasJSON, updateHOS_ENFERMARIA, deleteHOS_ENFERMARIA};