var express = require('express');
var router = express.Router();
var SqlRunner = require('../db/sql_runner');

// GET all characters
router.get('/', function(req, res) {
  SqlRunner.run('SELECT * FROM non_player_chars')
    .then((char) => {
      res.status(200).json(char.rows);
    });
});

//GET single character
router.get('/:id', function(req, res) {
  SqlRunner.run('SELECT * FROM non_player_chars WHERE id = $1', [req.params.id])
    .then((char) => {
      res.status(200).json(char.rows);
    });
});



module.exports = router;
