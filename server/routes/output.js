var express = require('express');
var router = express.Router();
var SqlRunner = require('../db/sql_runner');

// Create JSON
router.get('/', function(req, res) {
  const allData = {}
  SqlRunner.run('SELECT * FROM orc_names')
    .then((name) => {
      allData.orc_names = name.rows;
      SqlRunner.run('SELECT * FROM jobs')
        .then((job) => {
          allData.jobs = job.rows;
          SqlRunner.run('SELECT * FROM skills')
            .then((skill) => {
              allData.skills = skill.rows;
              SqlRunner.run('SELECT * FROM orc_surnames')
                .then((surname) => {
                  allData.orc_surnames = surname.rows;
                  SqlRunner.run('SELECT * FROM races')
                    .then((race) => {
                      allData.races = race.rows;
                      SqlRunner.run('SELECT * FROM elf_names')
                        .then((elfName) => {
                          allData.elf_names = elfName.rows;
                          SqlRunner.run('SELECT * FROM elf_surnames')
                            .then((elfSur) => {
                              allData.elf_surnames = elfSur.rows;
                                SqlRunner.run('SELECT * FROM human_names')
                                  .then((humName) => {
                                    allData.human_names = humName.rows;
                                    SqlRunner.run('SELECT * FROM human_surnames')
                                      .then((humSur) => {
                                        allData.human_surnames = humSur.rows;
                                        SqlRunner.run('SELECT * FROM tiefling_names')
                                          .then((tiefName) => {
                                            allData.tiefling_names = tiefName.rows;
                                            SqlRunner.run('SELECT * FROM tiefling_surnames')
                                              .then((tiefSur) => {
                                                allData.tiefling_surnames = tiefSur.rows;
                                                SqlRunner.run('SELECT * FROM dwarf_names')
                                                  .then((dwarName) => {
                                                    allData.dwarf_names = dwarName.rows;
                                                    SqlRunner.run('SELECT * FROM dwarf_surnames')
                                                      .then((dwarSur) => {
                                                        allData.dwarf_surnames = dwarSur.rows;
                                                        res.status(200).json(allData);
                                                      })
                                                  })
                                              })
                                          })
                                      })
                                  })
                            })
                        })
                    })
                })
            })
        })
    })
})

module.exports = router;
