// cargoController.js
const db = require('./db');

async function selectFCO_CARGO() {
  const conn = await db.connect();
  const [rows] = await conn.query('SELECT * FROM FCO_CARGO;');
  return rows;
}

async function getAllCargos() {
  const cargos = await selectFCO_CARGO();
  return cargos;
}

async function getAllCargosJSON(req, res) {
  try {
    const cargos = await getAllCargos();
    res.json({ success: true, cargos });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
}

async function updateFCO_CARGO(updatedCargoData) {
  const conn = await db.connect();
  const sql = `
      UPDATE FCO_CARGO
      SET DCCGO= ?,
          AUUSUULTALT = ?,
          AUDATULTALT = STR_TO_DATE(?, '%Y-%m-%d')
      WHERE NRCGO = ?;
  `;

  const values = [
      updatedCargoData.DCCGO,
      updatedCargoData.AUUSUULTALT,
      updatedCargoData.AUDATULTALT,
      updatedCargoData.NRCGO,
  ];

  try {
    const result = await conn.query(sql, values);
    return { success: true, message: 'Cargo atualizado com sucesso.' };
} catch (error) {
    console.error('Erro na atualização do cargo:', error);
    throw new Error('Erro na atualização do cargo.');
} finally {
    conn.release();
}
}

async function deleteFCO_CARGO(cargoCode) {
  const conn = await db.connect();
  const sql = 'DELETE FROM FCO_CARGO WHERE NRCGO = ?';

  try {
    const result = await conn.query(sql, [cargoCode]);
    return { success: true, message: 'Cargo excluído com sucesso.' };
  } catch (error) {
    console.error('Erro na exclusão do cargo:', error);
    throw new Error('Erro na exclusão do cargo.');
  } finally {
    conn.release();
  }
}

async function insertFCO_CARGO(cargo) {
  const conn = await db.connect();
  const sql = 'INSERT INTO FCO_CARGO (NRCGO, DCCGO, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?);';
  const values = [cargo.NRCGO, cargo.DCCGO, cargo.AUUSUULTALT, cargo.AUDATULTALT];
  return await conn.query(sql, values);
}

module.exports = { selectFCO_CARGO, insertFCO_CARGO, getAllCargos, getAllCargosJSON, updateFCO_CARGO, deleteFCO_CARGO };
