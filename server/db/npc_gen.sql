DROP TABLE non_player_chars;
DROP TABLE orc_male_names;
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

CREATE TABLE orc_male_names(
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

INSERT INTO non_player_chars (first_name, last_name, race, job, age, high_skill, low_skill, trait)
  VALUES ('Krunk', 'Grimmjow', 'Orc', 'Barbarian', '23', 'Strength', 'Intelligence', 'External extra jaw');
