var express = require('express');
var router = express.Router();
var SqlRunner = require('../db/sql_runner');

// router.get('/', function (req, res) {
//   const allData = {};
//   SqlRunner.run("SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG='npc_gen' AND TABLE_NAME NOT LIKE 'pg%' AND TABLE_NAME NOT LIKE 'sql%' AND TABLE_NAME NOT LIKE 'non%'")
//     .then((result) => {
//       const tableNames = result.rows;
//       tableNames.forEach((tableName) => {
//         const detail = tableName.table_name;
//         SqlRunner.run(`SELECT * FROM ${detail}`)
//           .then((entries) => {
//             allData[detail] = entries.rows;
//             // console.log(allData);
//           })
//       })
//
//     })
//     .then(() => {
//       res.status(200).json(allData);
//     })
// })

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
                                                        SqlRunner.run('SELECT * FROM dragonborn_names')
                                                          .then((dragNam) => {
                                                            allData.dragonborn_names = dragNam.rows;
                                                            SqlRunner.run('SELECT * FROM dragonborn_surnames')
                                                              .then((dragSur) => {
                                                                allData.dragonborn_surnames = dragSur.rows;
                                                                SqlRunner.run('SELECT * FROM gnome_names')
                                                                  .then((gnomeNam) => {
                                                                    allData.gnome_names = gnomeNam.rows;
                                                                    SqlRunner.run('SELECT * FROM gnome_surnames')
                                                                      .then((gnomeSur) => {
                                                                        allData.gnome_surnames = gnomeSur.rows;
                                                                        SqlRunner.run('SELECT * FROM halfelf_names')
                                                                          .then((helfNam) => {
                                                                            allData.halfelf_names = helfNam.rows;
                                                                            SqlRunner.run('SELECT * FROM halfelf_surnames')
                                                                              .then((helfSur) => {
                                                                                allData.halfelf_surnames = helfSur.rows;
                                                                                SqlRunner.run('SELECT * FROM halfling_names')
                                                                                  .then((lingNam) => {
                                                                                    allData.halfling_names = lingNam.rows;
                                                                                    SqlRunner.run('SELECT * FROM halfling_surnames')
                                                                                      .then((lingSur) => {
                                                                                        allData.halfling_surnames = lingSur.rows;
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
                            })
                        })
                    })
                })
            })
        })
    })
})

module.exports = router;
