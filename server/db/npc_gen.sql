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
DROP TABLE dragonborn_names;
DROP TABLE dragonborn_surnames;
DROP TABLE gnome_names;
DROP TABLE gnome_surnames;
DROP TABLE halfelf_names;
DROP TABLE halfelf_surnames;
DROP TABLE halfling_names;
DROP TABLE halfling_surnames;

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

CREATE TABLE dragonborn_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE dragonborn_surnames(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE gnome_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE gnome_surnames(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE halfelf_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE halfelf_surnames(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE halfling_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE halfling_surnames(
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
INSERT INTO orc_names (name) VALUES ('Krush');
INSERT INTO orc_names (name) VALUES ('Killa');
INSERT INTO orc_names (name) VALUES ('Gazkhull');
INSERT INTO orc_names (name) VALUES ('Fearow');
INSERT INTO orc_names (name) VALUES ('Kong');

-- ORC SURNAMES

INSERT INTO orc_surnames (name) VALUES ('Oathbreaker');
INSERT INTO orc_surnames (name) VALUES ('Gruzzle');
INSERT INTO orc_surnames (name) VALUES ('Jaegerjack');
INSERT INTO orc_surnames (name) VALUES ('Smashum');
INSERT INTO orc_surnames (name) VALUES ('Fistbreak');
INSERT INTO orc_surnames (name) VALUES ('Blatt');
INSERT INTO orc_surnames (name) VALUES ('Ubel');
INSERT INTO orc_surnames (name) VALUES ('Schwartz');
INSERT INTO orc_surnames (name) VALUES ('Strider');

-- ELF NAMES

INSERT INTO elf_names (name) VALUES ('Volodar');
INSERT INTO elf_names (name) VALUES ('Elen');
INSERT INTO elf_names (name) VALUES ('Agandaur');
INSERT INTO elf_names (name) VALUES ('Theodmer');
INSERT INTO elf_names (name) VALUES ('Lafarallin');
INSERT INTO elf_names (name) VALUES ('Varys');
INSERT INTO elf_names (name) VALUES ('Adresin');
INSERT INTO elf_names (name) VALUES ('Pywaln');
INSERT INTO elf_names (name) VALUES ('Galaeron');
INSERT INTO elf_names (name) VALUES ('Elpharae');
INSERT INTO elf_names (name) VALUES ('Laerdya');
INSERT INTO elf_names (name) VALUES ('Usamea');
INSERT INTO elf_names (name) VALUES ('Elanil');

-- ELF SURNAMES

INSERT INTO elf_surnames (name) VALUES ('Preslamin');
INSERT INTO elf_surnames (name) VALUES ('Dremurr');
INSERT INTO elf_surnames (name) VALUES ('Zucman');
INSERT INTO elf_surnames (name) VALUES ('Yllralei');
INSERT INTO elf_surnames (name) VALUES ('Liaxalim');
INSERT INTO elf_surnames (name) VALUES ('Presxisys');
INSERT INTO elf_surnames (name) VALUES ('Nortumal');
INSERT INTO elf_surnames (name) VALUES ('Yesran');

-- HUMAN NAMES

INSERT INTO human_names (name) VALUES ('Eowin');
INSERT INTO human_names (name) VALUES ('Sara');
INSERT INTO human_names (name) VALUES ('Judit');
INSERT INTO human_names (name) VALUES ('Zach');
INSERT INTO human_names (name) VALUES ('Adrian');
INSERT INTO human_names (name) VALUES ('James');
INSERT INTO human_names (name) VALUES ('Matthew');
INSERT INTO human_names (name) VALUES ('Rose');
INSERT INTO human_names (name) VALUES ('Hamish');
INSERT INTO human_names (name) VALUES ('Euan');
INSERT INTO human_names (name) VALUES ('Kris');
INSERT INTO human_names (name) VALUES ('Reka');
INSERT INTO human_names (name) VALUES ('Rod');
INSERT INTO human_names (name) VALUES ('Pawel');
INSERT INTO human_names (name) VALUES ('Ben');
INSERT INTO human_names (name) VALUES ('Sian');
INSERT INTO human_names (name) VALUES ('Keith');
INSERT INTO human_names (name) VALUES ('Bardem');
INSERT INTO human_names (name) VALUES ('Blazes');

-- HUMAN SURNAMES

INSERT INTO human_surnames (name) VALUES ('Polgar');
INSERT INTO human_surnames (name) VALUES ('Flint');
INSERT INTO human_surnames (name) VALUES ('Evensberg');
INSERT INTO human_surnames (name) VALUES ('Bean');
INSERT INTO human_surnames (name) VALUES ('Gettysville');
INSERT INTO human_surnames (name) VALUES ('Stark');
INSERT INTO human_surnames (name) VALUES ('Garbadour');
INSERT INTO human_surnames (name) VALUES ('King');
INSERT INTO human_surnames (name) VALUES ('Barrie');
INSERT INTO human_surnames (name) VALUES ('Lannister');
INSERT INTO human_surnames (name) VALUES ('Tarth');
INSERT INTO human_surnames (name) VALUES ('Darling');
INSERT INTO human_surnames (name) VALUES ('Smith');
INSERT INTO human_surnames (name) VALUES ('McPartlin');
INSERT INTO human_surnames (name) VALUES ('Gomez');
INSERT INTO human_surnames (name) VALUES ('Klose');
INSERT INTO human_surnames (name) VALUES ('Ospina');
INSERT INTO human_surnames (name) VALUES ('Welstead');
INSERT INTO human_surnames (name) VALUES ('Davies');

-- TIEFLING NAMES

INSERT INTO tiefling_names (name) VALUES ('Blott');
INSERT INTO tiefling_names (name) VALUES ('Runner');
INSERT INTO tiefling_names (name) VALUES ('Scale');
INSERT INTO tiefling_names (name) VALUES ('Wave');
INSERT INTO tiefling_names (name) VALUES ('Luna');
INSERT INTO tiefling_names (name) VALUES ('Horn');
INSERT INTO tiefling_names (name) VALUES ('Playwright');
INSERT INTO tiefling_names (name) VALUES ('Brush');
INSERT INTO tiefling_names (name) VALUES ('Sing');

-- TIEFLING SURNAMES

INSERT INTO tiefling_surnames (name) VALUES ('the Tiefling');

-- DWARF NAMES

INSERT INTO dwarf_names (name) VALUES ('Dwemer');
INSERT INTO dwarf_names (name) VALUES ('Thurrin');
INSERT INTO dwarf_names (name) VALUES ('Barimem');
INSERT INTO dwarf_names (name) VALUES ('Bumper');
INSERT INTO dwarf_names (name) VALUES ('Kusdrek');
INSERT INTO dwarf_names (name) VALUES ('Gloin');
INSERT INTO dwarf_names (name) VALUES ('Sastoun');
INSERT INTO dwarf_names (name) VALUES ('Barik');
INSERT INTO dwarf_names (name) VALUES ('Hakwetelin');
INSERT INTO dwarf_names (name) VALUES ('Rarfaerra');
INSERT INTO dwarf_names (name) VALUES ('Grokregar');

-- DWARF SURNAMES

INSERT INTO dwarf_surnames (name) VALUES ('Onyxgrip');
INSERT INTO dwarf_surnames (name) VALUES ('Wovenplate');
INSERT INTO dwarf_surnames (name) VALUES ('Hammersunder');
INSERT INTO dwarf_surnames (name) VALUES ('Anvilfoot');
INSERT INTO dwarf_surnames (name) VALUES ('Barbedgrogg');
INSERT INTO dwarf_surnames (name) VALUES ('Axeswinger');
INSERT INTO dwarf_surnames (name) VALUES ('Oakenshield');
INSERT INTO dwarf_surnames (name) VALUES ('Platewearer');
INSERT INTO dwarf_surnames (name) VALUES ('Swordbearer');
INSERT INTO dwarf_surnames (name) VALUES ('Grandsmith');

-- HALFELF NAMES

INSERT INTO halfelf_names (name) VALUES ('Eowin');
INSERT INTO halfelf_names (name) VALUES ('Sara');
INSERT INTO halfelf_names (name) VALUES ('Judit');
INSERT INTO halfelf_names (name) VALUES ('Zach');
INSERT INTO halfelf_names (name) VALUES ('Adrian');
INSERT INTO halfelf_names (name) VALUES ('James');
INSERT INTO halfelf_names (name) VALUES ('Matthew');
INSERT INTO halfelf_names (name) VALUES ('Rose');
INSERT INTO halfelf_names (name) VALUES ('Hamish');
INSERT INTO halfelf_names (name) VALUES ('Euan');
INSERT INTO halfelf_names (name) VALUES ('Kris');
INSERT INTO halfelf_names (name) VALUES ('Reka');
INSERT INTO halfelf_names (name) VALUES ('Rod');
INSERT INTO halfelf_names (name) VALUES ('Pawel');
INSERT INTO halfelf_names (name) VALUES ('Ben');
INSERT INTO halfelf_names (name) VALUES ('Sian');
INSERT INTO halfelf_names (name) VALUES ('Keith');
INSERT INTO halfelf_names (name) VALUES ('Bardem');
INSERT INTO halfelf_names (name) VALUES ('Blazes');
INSERT INTO halfelf_names (name) VALUES ('Volodar');
INSERT INTO halfelf_names (name) VALUES ('Elen');
INSERT INTO halfelf_names (name) VALUES ('Agandaur');
INSERT INTO halfelf_names (name) VALUES ('Theodmer');
INSERT INTO halfelf_names (name) VALUES ('Lafarallin');
INSERT INTO halfelf_names (name) VALUES ('Varys');
INSERT INTO halfelf_names (name) VALUES ('Adresin');
INSERT INTO halfelf_names (name) VALUES ('Pywaln');
INSERT INTO halfelf_names (name) VALUES ('Galaeron');
INSERT INTO halfelf_names (name) VALUES ('Elpharae');
INSERT INTO halfelf_names (name) VALUES ('Laerdya');
INSERT INTO halfelf_names (name) VALUES ('Usamea');
INSERT INTO halfelf_names (name) VALUES ('Elanil');

-- HALFELF SURNAMES

INSERT INTO halfelf_surnames (name) VALUES ('Polgar');
INSERT INTO halfelf_surnames (name) VALUES ('Flint');
INSERT INTO halfelf_surnames (name) VALUES ('Evensberg');
INSERT INTO halfelf_surnames (name) VALUES ('Bean');
INSERT INTO halfelf_surnames (name) VALUES ('Gettysville');
INSERT INTO halfelf_surnames (name) VALUES ('Stark');
INSERT INTO halfelf_surnames (name) VALUES ('Garbadour');
INSERT INTO halfelf_surnames (name) VALUES ('King');
INSERT INTO halfelf_surnames (name) VALUES ('Barrie');
INSERT INTO halfelf_surnames (name) VALUES ('Lannister');
INSERT INTO halfelf_surnames (name) VALUES ('Tarth');
INSERT INTO halfelf_surnames (name) VALUES ('Darling');
INSERT INTO halfelf_surnames (name) VALUES ('Smith');
INSERT INTO halfelf_surnames (name) VALUES ('McPartlin');
INSERT INTO halfelf_surnames (name) VALUES ('Gomez');
INSERT INTO halfelf_surnames (name) VALUES ('Klose');
INSERT INTO halfelf_surnames (name) VALUES ('Ospina');
INSERT INTO halfelf_surnames (name) VALUES ('Welstead');
INSERT INTO halfelf_surnames (name) VALUES ('Davies');
INSERT INTO halfelf_surnames (name) VALUES ('Preslamin');
INSERT INTO halfelf_surnames (name) VALUES ('Dremurr');
INSERT INTO halfelf_surnames (name) VALUES ('Zucman');
INSERT INTO halfelf_surnames (name) VALUES ('Yllralei');
INSERT INTO halfelf_surnames (name) VALUES ('Liaxalim');
INSERT INTO halfelf_surnames (name) VALUES ('Presxisys');
INSERT INTO halfelf_surnames (name) VALUES ('Nortumal');
INSERT INTO halfelf_surnames (name) VALUES ('Yesran');

-- HALFLING NAMES

INSERT INTO halfling_names (name) VALUES ('Zennad');
INSERT INTO halfling_names (name) VALUES ('Rickas');
INSERT INTO halfling_names (name) VALUES ('Oriric');
INSERT INTO halfling_names (name) VALUES ('Jonan');
INSERT INTO halfling_names (name) VALUES ('Quinser');
INSERT INTO halfling_names (name) VALUES ('Jannan');
INSERT INTO halfling_names (name) VALUES ('Idorich');
INSERT INTO halfling_names (name) VALUES ('Bartran');
INSERT INTO halfling_names (name) VALUES ('Ankas');
INSERT INTO halfling_names (name) VALUES ('Korpos');
INSERT INTO halfling_names (name) VALUES ('Elidove');
INSERT INTO halfling_names (name) VALUES ('Vaprys');
INSERT INTO halfling_names (name) VALUES ('Eophina');
INSERT INTO halfling_names (name) VALUES ('Malora');
INSERT INTO halfling_names (name) VALUES ('Bredove');
INSERT INTO halfling_names (name) VALUES ('Fayna');
INSERT INTO halfling_names (name) VALUES ('Kellyse');
INSERT INTO halfling_names (name) VALUES ('Lehaly');

-- HALFLING SURNAMES

INSERT INTO halfling_surnames (name) VALUES ('Bridgend');
INSERT INTO halfling_surnames (name) VALUES ('Watersedge');
INSERT INTO halfling_surnames (name) VALUES ('Barrow');
INSERT INTO halfling_surnames (name) VALUES ('Hollow');
INSERT INTO halfling_surnames (name) VALUES ('Underpass');
INSERT INTO halfling_surnames (name) VALUES ('Hilltop');
INSERT INTO halfling_surnames (name) VALUES ('Mountainfoot');
INSERT INTO halfling_surnames (name) VALUES ('Sandsedge');
INSERT INTO halfling_surnames (name) VALUES ('Underdune');
INSERT INTO halfling_surnames (name) VALUES ('Wavetop');
INSERT INTO halfling_surnames (name) VALUES ('Canalshore');
INSERT INTO halfling_surnames (name) VALUES ('Beachhead');
INSERT INTO halfling_surnames (name) VALUES ('Farmstead');

-- GNOME NAMES

INSERT INTO gnome_names (name) VALUES ('Genzbar');
INSERT INTO gnome_names (name) VALUES ('Smeddaic');
INSERT INTO gnome_names (name) VALUES ('Melvack');
INSERT INTO gnome_names (name) VALUES ('Tymwess');
INSERT INTO gnome_names (name) VALUES ('Frymdup');
INSERT INTO gnome_names (name) VALUES ('Klybemdoort');
INSERT INTO gnome_names (name) VALUES ('Sloosyviss');
INSERT INTO gnome_names (name) VALUES ('Pawemwec');
INSERT INTO gnome_names (name) VALUES ('Mollbot');
INSERT INTO gnome_names (name) VALUES ('Fnemmis');
INSERT INTO gnome_names (name) VALUES ('Formaldihyde');
INSERT INTO gnome_names (name) VALUES ('Gebblis');
INSERT INTO gnome_names (name) VALUES ('Slihere');
INSERT INTO gnome_names (name) VALUES ('Fibonsmy');
INSERT INTO gnome_names (name) VALUES ('Banzberort');

-- GNOME SURNAMES

INSERT INTO gnome_surnames (name) VALUES ('van Wolterink');
INSERT INTO gnome_surnames (name) VALUES ('Kiesebos');
INSERT INTO gnome_surnames (name) VALUES ('Goldsmit');
INSERT INTO gnome_surnames (name) VALUES ('Finke');
INSERT INTO gnome_surnames (name) VALUES ('van der Vaar');
INSERT INTO gnome_surnames (name) VALUES ('Rompelman');
INSERT INTO gnome_surnames (name) VALUES ('Weersink');
INSERT INTO gnome_surnames (name) VALUES ('Rumplestilkskin');
INSERT INTO gnome_surnames (name) VALUES ('Achteresch');

-- DRAGONBORN NAMES

INSERT INTO dragonborn_names (name) VALUES ('Bellasar');
INSERT INTO dragonborn_names (name) VALUES ('Kilxiros');
INSERT INTO dragonborn_names (name) VALUES ('Doxan');
INSERT INTO dragonborn_names (name) VALUES ('Dogar');
INSERT INTO dragonborn_names (name) VALUES ('Ravocrath');
INSERT INTO dragonborn_names (name) VALUES ('Faerzire');
INSERT INTO dragonborn_names (name) VALUES ('Draythas');
INSERT INTO dragonborn_names (name) VALUES ('Gorahazar');
INSERT INTO dragonborn_names (name) VALUES ('Krivvull');
INSERT INTO dragonborn_names (name) VALUES ('Belvayla');
INSERT INTO dragonborn_names (name) VALUES ('Lilomyse');
INSERT INTO dragonborn_names (name) VALUES ('Xiscys');
INSERT INTO dragonborn_names (name) VALUES ('Bishann');
INSERT INTO dragonborn_names (name) VALUES ('Korann');
INSERT INTO dragonborn_names (name) VALUES ('Gurgwen');
INSERT INTO dragonborn_names (name) VALUES ('Belwyn');
INSERT INTO dragonborn_names (name) VALUES ('Ophigil');

-- DRAGONBORN SURNAMES

INSERT INTO dragonborn_surnames (name) VALUES ('Kenkejirrek');
INSERT INTO dragonborn_surnames (name) VALUES ('Uuldacear');
INSERT INTO dragonborn_surnames (name) VALUES ('Elricnuullaan');
INSERT INTO dragonborn_surnames (name) VALUES ('Thildrishtemush');
INSERT INTO dragonborn_surnames (name) VALUES ('Tolkash');
INSERT INTO dragonborn_surnames (name) VALUES ('Uldrankuur');
INSERT INTO dragonborn_surnames (name) VALUES ('Krancean');
INSERT INTO dragonborn_surnames (name) VALUES ('Shenkiderduc');
INSERT INTO dragonborn_surnames (name) VALUES ('Impuanel');
INSERT INTO dragonborn_surnames (name) VALUES ('Drelmec');
INSERT INTO dragonborn_surnames (name) VALUES ('Clirnakmialor');
INSERT INTO dragonborn_surnames (name) VALUES ('Pramphekmec');
INSERT INTO dragonborn_surnames (name) VALUES ('Myacheandrel');
INSERT INTO dragonborn_surnames (name) VALUES ('Marthenthiluuc');

-- RACES

INSERT INTO races (race) VALUES ('Orc');
INSERT INTO races (race) VALUES ('Elf');
INSERT INTO races (race) VALUES ('Human');
INSERT INTO races (race) VALUES ('Tiefling');
INSERT INTO races (race) VALUES ('Dwarf');
INSERT INTO races (race) VALUES ('Dragonborn');
INSERT INTO races (race) VALUES ('Gnome');
INSERT INTO races (race) VALUES ('Halfelf');
INSERT INTO races (race) VALUES ('Halfling');

-- JOBS

INSERT INTO jobs (job) VALUES ('Barbarian');
INSERT INTO jobs (job) VALUES ('Wizard');
INSERT INTO jobs (job) VALUES ('Rogue');
INSERT INTO jobs (job) VALUES ('Cleric');
INSERT INTO jobs (job) VALUES ('Ranger');
INSERT INTO jobs (job) VALUES ('Bard');
INSERT INTO jobs (job) VALUES ('Druid');
INSERT INTO jobs (job) VALUES ('Fighter');
INSERT INTO jobs (job) VALUES ('Monk');
INSERT INTO jobs (job) VALUES ('Paladin');
INSERT INTO jobs (job) VALUES ('Sorceror');
INSERT INTO jobs (job) VALUES ('Warlock');

-- SKILLS

INSERT INTO skills (skill) VALUES ('Strength');
INSERT INTO skills (skill) VALUES ('Dexterity');
INSERT INTO skills (skill) VALUES ('Constitution');
INSERT INTO skills (skill) VALUES ('Intelligence');
INSERT INTO skills (skill) VALUES ('Wisdom');
INSERT INTO skills (skill) VALUES ('Charisma');

-- TESTS
