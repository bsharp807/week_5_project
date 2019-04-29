DROP TABLE non_player_chars;
DROP TABLE orc_names;
DROP TABLE orc_surnames;
DROP TABLE orc_female_names;
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

CREATE TABLE orc_female_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
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

-- ORC MALE NAMES

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
