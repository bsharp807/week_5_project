DROP TABLE non_player_chars;

DROP TABLE orc_names;
DROP TABLE orc_surnames;
DROP TABLE elf_names;
DROP TABLE elf_surnames;
DROP TABLE human_names;
DROP TABLE human_surnames;
DROP TABLE tiefling_names;
DROP TABLE tiefling_surnames;
DROP TABLE dwarf_names;
DROP TABLE dwarf_surnames;

DROP TABLE races;
DROP TABLE jobs;
DROP TABLE skills;
DROP TABLE traits;

CREATE TABLE non_player_chars(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  race VARCHAR(255),
  job VARCHAR(255),
  age INT,
  high_skill VARCHAR(255),
  low_skill VARCHAR(255),
  trait VARCHAR(1024)
);

CREATE TABLE orc_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE orc_surnames(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE elf_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE elf_surnames(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE human_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE human_surnames(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE tiefling_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE tiefling_surnames(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE dwarf_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE dwarf_surnames(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE races(
  id SERIAL8 PRIMARY KEY,
  race VARCHAR(255)
);

CREATE TABLE jobs(
  id SERIAL8 PRIMARY KEY,
  job VARCHAR(255)
);

CREATE TABLE skills(
  id SERIAL8 PRIMARY KEY,
  skill VARCHAR(255)
);

CREATE TABLE traits(
  id SERIAL8 PRIMARY KEY,
  trait VARCHAR(255)
);

-- INITIAL NPC

INSERT INTO non_player_chars (first_name, last_name, race, job, age, high_skill, low_skill, trait)
  VALUES ('Krunk', 'Grimmjow', 'Orc', 'Barbarian', '23', 'Strength', 'Intelligence', 'External extra jaw');

-- ORC NAMES

INSERT INTO orc_names (name) VALUES ('Gromsh');
INSERT INTO orc_names (name) VALUES ('Gorge');
INSERT INTO orc_names (name) VALUES ('Frunks');
INSERT INTO orc_names (name) VALUES ('Ozymandiork');
INSERT INTO orc_names (name) VALUES ('Arkus');

-- ORC SURNAMES

INSERT INTO orc_surnames (name) VALUES ('Oathbreaker');
INSERT INTO orc_surnames (name) VALUES ('Gruzzle');
INSERT INTO orc_surnames (name) VALUES ('Jaegerjack');
INSERT INTO orc_surnames (name) VALUES ('Smashum');
INSERT INTO orc_surnames (name) VALUES ('Arachnias');

-- ELF NAMES

INSERT INTO elf_names (name) VALUES ('Volodar');
INSERT INTO elf_names (name) VALUES ('Elen');
INSERT INTO elf_names (name) VALUES ('Agandaur');
INSERT INTO elf_names (name) VALUES ('Theodmer');
INSERT INTO elf_names (name) VALUES ('Lafarallin');

-- ELF SURNAMES

INSERT INTO elf_surnames (name) VALUES ('Preslamin');
INSERT INTO elf_surnames (name) VALUES ('Dremurr');
INSERT INTO elf_surnames (name) VALUES ('Zucman');
INSERT INTO elf_surnames (name) VALUES ('Yllralei');
INSERT INTO elf_surnames (name) VALUES ('Liaxalim');

-- HUMAN NAMES

INSERT INTO human_names (name) VALUES ('Eowin');
INSERT INTO human_names (name) VALUES ('Sara');
INSERT INTO human_names (name) VALUES ('Judit');
INSERT INTO human_names (name) VALUES ('Zach');
INSERT INTO human_names (name) VALUES ('Adrian');

-- HUMAN SURNAMES

INSERT INTO human_surnames (name) VALUES ('Polgar');
INSERT INTO human_surnames (name) VALUES ('Flint');
INSERT INTO human_surnames (name) VALUES ('Evensberg');
INSERT INTO human_surnames (name) VALUES ('Bean');
INSERT INTO human_surnames (name) VALUES ('Gettysville');

-- TIEFLING NAMES

INSERT INTO tiefling_names (name) VALUES ('Blott');
INSERT INTO tiefling_names (name) VALUES ('Runner');
INSERT INTO tiefling_names (name) VALUES ('Scale');
INSERT INTO tiefling_names (name) VALUES ('Wave');
INSERT INTO tiefling_names (name) VALUES ('Luna');

-- TIEFLING SURNAMES

INSERT INTO tiefling_surnames (name) VALUES ('the Tiefling');

-- Dwarf NAMES

INSERT INTO dwarf_names (name) VALUES ('Dwemer');
INSERT INTO dwarf_names (name) VALUES ('Thurrin');
INSERT INTO dwarf_names (name) VALUES ('Barimem');
INSERT INTO dwarf_names (name) VALUES ('Bumper');
INSERT INTO dwarf_names (name) VALUES ('Kusdrek');

-- Dwarf SURNAMES

INSERT INTO dwarf_surnames (name) VALUES ('Onyxgrip');
INSERT INTO dwarf_surnames (name) VALUES ('Wovenplate');
INSERT INTO dwarf_surnames (name) VALUES ('Hammersunder');
INSERT INTO dwarf_surnames (name) VALUES ('Anvilfoot');
INSERT INTO dwarf_surnames (name) VALUES ('Barbedgrogg');

-- RACES

INSERT INTO races (race) VALUES ('Orc');
INSERT INTO races (race) VALUES ('Elf');
INSERT INTO races (race) VALUES ('Human');
INSERT INTO races (race) VALUES ('Tiefling');
INSERT INTO races (race) VALUES ('Dwarf');

-- JOBS

INSERT INTO jobs (job) VALUES ('Barbarian');
INSERT INTO jobs (job) VALUES ('Wizard');
INSERT INTO jobs (job) VALUES ('Rogue');
INSERT INTO jobs (job) VALUES ('Cleric');
INSERT INTO jobs (job) VALUES ('Ranger');

-- SKILLS

INSERT INTO skills (skill) VALUES ('Strength');
INSERT INTO skills (skill) VALUES ('Dexterity');
INSERT INTO skills (skill) VALUES ('Constitution');
INSERT INTO skills (skill) VALUES ('Intelligence');
INSERT INTO skills (skill) VALUES ('Wisdom');
INSERT INTO skills (skill) VALUES ('Charisma');

-- TESTS
