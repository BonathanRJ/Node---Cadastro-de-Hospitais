// index.js
(async () => {
    const db = require('./db');
    console.log('Começou!');

    console.log('INSERT INTO FCO_CARGO');
    const result = await db.insertFCO_CARGO({NRCGO: '25', DCCGO:'teste2', AUUSUULTALT: 'ababuble', AUDATULTALT: '2023-11-08'});
    console.log(result);

    console.log('SELECT * FROM FCO_CARGO;');
    const cargo = await db.selectFCO_CARGO();
    console.log(cargo);

    console.log('UPDATE FCO_CARGO');
    const result2 = await db.updateFCO_CARGO(2, {DCCGO: 'FLAMENGO'});
    console.log(result2);

    console.log('DELETE FROM FCO_CARGO');
    const result3 = await db.deleteFCO_CARGO(12);
    console.log(result3);

})();