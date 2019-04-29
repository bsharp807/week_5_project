var express = require('express');
var router = express.Router();
var SqlRunner = require('../db/sql_runner');

// Create JSON
router.get('/', function(req, res) {
  const allData = {}
  SqlRunner.run('SELECT * FROM orc_names')
    .then((name) => {
      allData.names = name.rows;
      SqlRunner.run('SELECT * FROM jobs')
        .then((job) => {
          allData.jobs = job.rows;
          SqlRunner.run('SELECT * FROM skills')
            .then((skill) => {
              allData.skills = skill.rows;
              res.status(200).json(allData);
            })
        })
    })
})

module.exports = router;