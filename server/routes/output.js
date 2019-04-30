var express = require('express');
var router = express.Router();
var SqlRunner = require('../db/sql_runner');

router.get('/', function (req, res) {
  SqlRunner.run("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG='npc_gen' AND TABLE_NAME NOT LIKE 'pg%' AND TABLE_NAME NOT LIKE 'sql%' AND TABLE_NAME NOT LIKE 'non%' ORDER BY TABLE_NAME")
    .then((results) => {
      tablesAndDetails = [...results.rows];

      let myPromises = results.rows.map(table => {
        return SqlRunner.run(
          `SELECT * FROM ${table.table_name}`
        )
      })

      Promise.all(myPromises).then(detail => {
        for (var i = 0; i < detail.length; i++) {
          tablesAndDetails[i][results.rows[i].table_name] =  detail[i].rows
        }

        const allData = {};

        tablesAndDetails.forEach((element) => {
          allData[element.table_name] = element[element.table_name];
        })

        res.status(200).json(allData);
    })
  })
})

module.exports = router;
