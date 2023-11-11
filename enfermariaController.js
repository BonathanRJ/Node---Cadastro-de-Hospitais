// enfermariaController.js
const db = require('./db');

async function selectHOS_ENFERMARIA() {
    const conn = await db.connect();
    const [rows] = await conn.query('SELECT * FROM HOS_ENFERMARIA;');
    return rows;
}

async function insertHOS_ENFERMARIA(enfermaria) {
    const conn = await db.connect();
    const sql = 'INSERT INTO HOS_ENFERMARIA (CDENF, IDHOS, CDHOS, DCBLO, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?,?,?);';
    const values = [enfermaria.CDENF, enfermaria.IDHOS, enfermaria.CDHOS, enfermaria.DCBLO, enfermaria.AUUSUULTALT, enfermaria.AUDATULTALT];
    return await conn.query(sql, values);
}

module.exports = { selectHOS_ENFERMARIA, insertHOS_ENFERMARIA };
