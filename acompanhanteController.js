// acompanhanteController.js
const db = require('./db');

async function selectPAC_ACOMPANHANTE() {
    const conn = await db.connect();
    const [rows] = await conn.query('SELECT * FROM PAC_ACOMPANHANTE;');
    return rows;
}

async function insertPAC_ACOMPANHANTE(acompanhante) {
    const conn = await db.connect();
    const sql = 'INSERT INTO PAC_ACOMPANHANTE (IDHOS, CDHOS, IDENF, CDENF, NRMATACO, NMACO, DTNSCACO, IDPAC, NRMATPAC, NRCPFACO, NRTELRSDACO, DCEMLACO, AUUSUULTALT, AUDATULTALT) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);';
    const values = [
        acompanhante.IDHOS, acompanhante.CDHOS, acompanhante.IDENF, acompanhante.CDENF, acompanhante.NRMATACO, acompanhante.NMACO, acompanhante.DTNSCACO,
        acompanhante.IDPAC, acompanhante.NRMATPAC, acompanhante.NRCPFACO, acompanhante.NRTELRSDACO, acompanhante.DCEMLACO, acompanhante.AUUSUULTALT, acompanhante.AUDATULTALT
    ];
    return await conn.query(sql, values);
}

module.exports = { selectPAC_ACOMPANHANTE, insertPAC_ACOMPANHANTE };
