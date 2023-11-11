// funcionarioController.js
const db = require('./db');

async function selectFCO_FUNCIONARIO() {
    const conn = await db.connect();
    const [rows] = await conn.query('SELECT * FROM FCO_FUNCIONARIO;');
    return rows;
}

async function insertFCO_FUNCIONARIO(funcionario) {
    const conn = await db.connect();
    const sql = 'INSERT INTO FCO_FUNCIONARIO (IDHOS, CDHOS, NRISC, NMFCO, DTNSCFCO, TPSEXFCO, NRCPFFCO, DTISCFCO, DCLOGFCO, NRLOGFCO, DCBAIFCO, DCCIDFCO, CDPSIFCO, NRCEPFCO, SGUFSFCO, NRTELRSDFCO, DCEMLFCO, NRCGO, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);';
    const values = [
        funcionario.IDHOS, funcionario.CDHOS, funcionario.NRISC, funcionario.NMFCO, funcionario.DTNSCFCO, funcionario.TPSEXFCO, funcionario.NRCPFFCO,
        funcionario.DTISCFCO, funcionario.DCLOGFCO, funcionario.NRLOGFCO, funcionario.DCBAIFCO, funcionario.DCCIDFCO, funcionario.CDPSIFCO, funcionario.NRCEPFCO,
        funcionario.SGUFSFCO, funcionario.NRTELRSDFCO, funcionario.DCEMLFCO, funcionario.NRCGO, funcionario.AUUSUULTALT, funcionario.AUDATULTALT
    ];
    return await conn.query(sql, values);
}

module.exports = { selectFCO_FUNCIONARIO, insertFCO_FUNCIONARIO };
