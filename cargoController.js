// cargoController.js
const db = require('./db');

async function selectFCO_CARGO() {
  const conn = await db.connect();
  const [rows] = await conn.query('SELECT * FROM FCO_CARGO;');
  return rows;
}

async function insertFCO_CARGO(cargo) {
  const conn = await db.connect();
  const sql = 'INSERT INTO FCO_CARGO (NRCGO, DCCGO, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?);';
  const values = [cargo.NRCGO, cargo.DCCGO, cargo.AUUSUULTALT, cargo.AUDATULTALT];
  return await conn.query(sql, values);
}

module.exports = { selectFCO_CARGO, insertFCO_CARGO };
