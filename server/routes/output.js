var express = require('express');
var router = express.Router();
var SqlRunner = require('../db/sql_runner');

/* GET home page. */
router.get('/', function(req, res) {
  SqlRunner.run('SELECT * FROM orc_male_names')
    .then((name) => {
      res.status(200).json(name.rows)
    })
})

module.exports = router;
