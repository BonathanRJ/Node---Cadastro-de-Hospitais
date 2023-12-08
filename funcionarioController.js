// funcionarioController.js
const db = require('./db');

async function selectFCO_FUNCIONARIO() {
    const conn = await db.connect();
    const [rows] = await conn.query('SELECT * FROM FCO_FUNCIONARIO;');
    return rows;
}

async function getAllFuncionarios() {
    const funcionarios = await selectFCO_FUNCIONARIO();
    return funcionarios;
}

async function getAllFuncionariosJSON(req, res) {
    try {
      const funcionarios = await getAllFuncionarios();
      res.json({ success: true, funcionarios });
    } catch (error) {
      res.status(500).json({ success: false, error: error.message });
    }
}

async function updateFCO_FUNCIONARIO(updatedFuncionarioData) {
    const conn = await db.connect();
    const sql = `
        UPDATE FCO_FUNCIONARIO
        SET IDHOS = ?,
            CDHOS = ?,
            NMFCO = ?,
            DTNSCFCO = STR_TO_DATE(?, '%Y-%m-%d'),
            TPSEXFCO = ?,
            NRCPFFCO = ?,
            DTISCFCO = STR_TO_DATE(?, '%Y-%m-%d'), 
            DCLOGFCO = ?,
            NRLOGFCO = ?,
            DCBAIFCO = ?,
            DCCIDFCO = ?,
            CDPSIFCO = ?,
            NRCEPFCO = ?,
            SGUFSFCO = ?,
            NRTELRSDFCO = ?,
            DCEMLFCO = ?,
            NRCGO = ?,
            AUUSUULTALT = ?,
            AUDATULTALT = STR_TO_DATE(?, '%Y-%m-%d')
        WHERE NRISC = ?;
    `;
    const values = [
        updatedFuncionarioData.IDHOS,
        updatedFuncionarioData.CDHOS,
        updatedFuncionarioData.NMFCO,
        updatedFuncionarioData.DTNSCFCO,
        updatedFuncionarioData.TPSEXFCO,
        updatedFuncionarioData.NRCPFFCO,
        updatedFuncionarioData.DTISCFCO,
        updatedFuncionarioData.DCLOGFCO,
        updatedFuncionarioData.NRLOGFCO,
        updatedFuncionarioData.DCBAIFCO,
        updatedFuncionarioData.DCCIDFCO,
        updatedFuncionarioData.CDPSIFCO,
        updatedFuncionarioData.NRCEPFCO,
        updatedFuncionarioData.SGUFSFCO,
        updatedFuncionarioData.NRTELRSDFCO,
        updatedFuncionarioData.DCEMLFCO,
        updatedFuncionarioData.NRCGO,
        updatedFuncionarioData.AUUSUULTALT,
        updatedFuncionarioData.AUDATULTALT,
        updatedFuncionarioData.NRISC,
    ];
  
    try {
      const result = await conn.query(sql, values);
      return { success: true, message: 'Funcionário atualizado com sucesso.' };
    } catch (error) {
      console.error('Erro na atualização do funcionário:', error);
      throw new Error('Erro na atualização do funcionário.');
    } finally {
      conn.release();
    }
  }
 

  async function deleteFCO_FUNCIONARIO(funcionarioCode) {
    const conn = await db.connect();
    const sql = 'DELETE FROM FCO_FUNCIONARIO WHERE NRISC = ?';

    try {
      const result = await conn.query(sql, [funcionarioCode]);
      return { success: true, message: 'Funcionário excluído com sucesso.' };
    } catch (error) {
      console.error('Erro na exclusão do funcionário:', error);
      throw new Error('Erro na exclusão do funcionário.');
    } finally {
      conn.release();
    }
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


module.exports = { selectFCO_FUNCIONARIO, insertFCO_FUNCIONARIO, getAllFuncionarios, getAllFuncionariosJSON, updateFCO_FUNCIONARIO, deleteFCO_FUNCIONARIO};
