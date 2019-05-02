var express = require('express');
var router = express.Router();
var SqlRunner = require('../db/sql_runner');

// GET all characters
router.get('/', function(req, res) {
  SqlRunner.run('SELECT * FROM non_player_chars ORDER BY first_name ASC')
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

//ADD character
router.post('/', function(req, res) {
  SqlRunner.run('INSERT INTO non_player_chars (first_name, last_name, race, job, age, high_skill, low_skill, trait, appearance, talent, mannerism, ideal, bond, flaw, birthplace, gender) VALUES ($1, $6, $7, $2, $3, $4, $5, $8, $9, $10, $11, $12, $13, $14, $15, $16)', [req.body.first_name, req.body.job, req.body.age, req.body.high_skill, req.body.low_skill, req.body.last_name, req.body.race, req.body.trait, req.body.appearance, req.body.talent, req.body.mannerism, req.body.ideal, req.body.bond, req.body.flaw, req.body.birthplace, req.body.gender])
    .then((result) => {
      SqlRunner.run('SELECT * FROM non_player_chars')
        .then((result) => {
          res.status(201).json(result.rows)
        })
    })
})

//UPDATE single character
router.put('/:id', function(req, res) {
  SqlRunner.run('UPDATE non_player_chars SET first_name = $2, last_name = $8, job = $3, age = $4, high_skill = $5, low_skill = $6, gender = $7 where id = $1', [req.params.id, req.body.first_name, req.body.job, req.body.age, req.body.high_skill, req.body.low_skill, req.body.gender, req.body.last_name])
    .then((name) => {
      SqlRunner.run('SELECT * FROM non_player_chars WHERE id = $1', [req.params.id])
        .then((result) => {
          res.status(201).json(result.rows)
        })
    })
})

//DELETE single character
router.delete('/:id', function(req, res) {
  SqlRunner.run('DELETE FROM non_player_chars WHERE id = $1', [req.params.id])
    .then((result) => {
      SqlRunner.run('SELECT * FROM non_player_chars WHERE id = 1')
        .then((name) => {
          res.status(201).json(name.rows);
        })
    })
})

module.exports = router;
