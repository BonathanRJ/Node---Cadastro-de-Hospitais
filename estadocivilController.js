// estadoCivilController.js
const db = require('./db');

async function selectPAC_ESTADO_CIVIL() {
    const conn = await db.connect();
    const [rows] = await conn.query('SELECT * FROM PAC_ESTADO_CIVIL;');
    return rows;
}

async function insertPAC_ESTADO_CIVIL(estadoCivil) {
    const conn = await db.connect();
    const sql = 'INSERT INTO PAC_ESTADO_CIVIL (CDESTCIV, DCESTCIV, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?);';
    const values = [estadoCivil.CDESTCIV, estadoCivil.DCESTCIV, estadoCivil.AUUSUULTALT, estadoCivil.AUDATULTALT];
    return await conn.query(sql, values);
}

module.exports = { selectPAC_ESTADO_CIVIL, insertPAC_ESTADO_CIVIL };
