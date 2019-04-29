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

//CREATE JSON FILE -- DOES NOT WORK
router.get('/orc', function(req, res) {
  SqlRunner.run('SELECT * FROM orc_male_names')
    .then((name) => {
      res.status(200).json(name.rows)
    })
})

//ADD character
router.post('/', function(req, res) {
  SqlRunner.run('INSERT INTO non_player_chars (first_name, last_name job, age, high_skill, low_skill) VALUES ($1, $6, $2, $3, $4, $5)', [req.body.first_name, req.body.job, req.body.age, req.body.high_skill, req.body.low_skill, req.body.last_name])
    .then((result) => {
      SqlRunner.run('SELECT * FROM non_player_chars')
        .then((result) => {
          res.status(201).json(result.rows)
        })
    })
})

//UPDATE single character
router.put('/:id', function(req, res) {
  SqlRunner.run('UPDATE non_player_chars SET first_name = $2, job = $3, age = $4, high_skill = $5, low_skill = $6 where id = $1', [req.params.id, req.body.name, req.body.job, req.body.age, req.body.high_skill, req.body.low_skill])
    .then((name) => {
      SqlRunner.run('SELECT * FROM non_player_chars')
        .then((result) => {
          res.status(201).json(result.rows)
        })
    })
})

module.exports = router;
