DROP TABLE non_player_chars;

DROP TABLE orc_names;
DROP TABLE orc_surnames;
DROP TABLE elf_names;
DROP TABLE elf_surnames;
DROP TABLE female_human_names;
DROP TABLE male_human_names;
DROP TABLE human_surnames;
DROP TABLE tiefling_names;
DROP TABLE tiefling_surnames;
DROP TABLE dwarf_names;
DROP TABLE dwarf_surnames;
DROP TABLE dragonborn_names;
DROP TABLE dragonborn_surnames;
DROP TABLE gnome_names;
DROP TABLE gnome_surnames;
DROP TABLE female_halfelf_names;
DROP TABLE male_halfelf_names;
DROP TABLE halfelf_surnames;
DROP TABLE halfling_names;
DROP TABLE halfling_surnames;

DROP TABLE races;
DROP TABLE jobs;
DROP TABLE skills;

DROP TABLE traits;
DROP TABLE appearances;
DROP TABLE talents;
DROP TABLE mannerisms;
DROP TABLE ideals;
DROP TABLE bonds;
DROP TABLE flaws;
DROP TABLE birthplaces;

CREATE TABLE non_player_chars(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  race VARCHAR(255),
  job VARCHAR(255),
  age INT,
  high_skill VARCHAR(255),
  low_skill VARCHAR(255),
  trait VARCHAR(1024),
  appearance VARCHAR(1024),
  talent VARCHAR(1024),
  mannerism VARCHAR(1024),
  ideal VARCHAR(1024),
  bond VARCHAR(1024),
  flaw VARCHAR(1024),
  birthplace VARCHAR(1024),
  gender VARCHAR(255)
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

CREATE TABLE human_surnames(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE female_human_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE male_human_names(
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

CREATE TABLE male_halfelf_names(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE female_halfelf_names(
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

CREATE TABLE appearances(
  id SERIAL8 PRIMARY KEY,
  appearance VARCHAR(255)
);

CREATE TABLE talents(
  id SERIAL8 PRIMARY KEY,
  talent VARCHAR(255)
);

CREATE TABLE mannerisms(
  id SERIAL8 PRIMARY KEY,
  mannerism VARCHAR(255)
);

CREATE TABLE ideals(
  id SERIAL8 PRIMARY KEY,
  ideal VARCHAR(255)
);

CREATE TABLE bonds(
  id SERIAL8 PRIMARY KEY,
  bond VARCHAR(255)
);

CREATE TABLE flaws(
  id SERIAL8 PRIMARY KEY,
  flaw VARCHAR(255)
);

CREATE TABLE birthplaces(
  id SERIAL8 PRIMARY KEY,
  birthplace VARCHAR(255)
);

-- INITIAL NPC

INSERT INTO non_player_chars (first_name, last_name, race, job, age, high_skill, low_skill, trait, talent, mannerism, ideal, bond, flaw, birthplace, appearance, gender)
  VALUES ('Krunk', 'Grimmjow', 'Orc', 'Barbarian', '23', 'Strength', 'Intelligence', 'a melancholic', 'drinks everyone under the table', 'speaks loudly', 'Revenge', 'drawn to a special place', 'crippling depression', 'under a glass moon', 'strange jawline', 'male');

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
INSERT INTO orc_names (name) VALUES ('Zubar');

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

INSERT INTO female_human_names (name) VALUES ('Eowin');
INSERT INTO female_human_names (name) VALUES ('Sara');
INSERT INTO female_human_names (name) VALUES ('Judit');
INSERT INTO male_human_names (name) VALUES ('Zach');
INSERT INTO male_human_names (name) VALUES ('Adrian');
INSERT INTO female_human_names (name) VALUES ('Adrian');
INSERT INTO male_human_names (name) VALUES ('James');
INSERT INTO male_human_names (name) VALUES ('Matthew');
INSERT INTO female_human_names (name) VALUES ('Rose');
INSERT INTO male_human_names (name) VALUES ('Hamish');
INSERT INTO male_human_names (name) VALUES ('Euan');
INSERT INTO male_human_names (name) VALUES ('Kris');
INSERT INTO female_human_names (name) VALUES ('Kris');
INSERT INTO female_human_names (name) VALUES ('Reka');
INSERT INTO male_human_names (name) VALUES ('Rod');
INSERT INTO male_human_names (name) VALUES ('Pawel');
INSERT INTO male_human_names (name) VALUES ('Ben');
INSERT INTO female_human_names (name) VALUES ('Sian');
INSERT INTO female_human_names (name) VALUES ('Vikki');
INSERT INTO female_human_names (name) VALUES ('Laherl');
INSERT INTO female_human_names (name) VALUES ('Evelyn');
INSERT INTO female_human_names (name) VALUES ('Dido');
INSERT INTO female_human_names (name) VALUES ('Catherine');
INSERT INTO female_human_names (name) VALUES ('Sally');
INSERT INTO female_human_names (name) VALUES ('Jenny');
INSERT INTO female_human_names (name) VALUES ('Julia');
INSERT INTO female_human_names (name) VALUES ('Katie');
INSERT INTO female_human_names (name) VALUES ('Esther');
INSERT INTO male_human_names (name) VALUES ('Keith');
INSERT INTO male_human_names (name) VALUES ('Isaac');
INSERT INTO male_human_names (name) VALUES ('Keith');
INSERT INTO male_human_names (name) VALUES ('Keith');
INSERT INTO male_human_names (name) VALUES ('Bardem');
INSERT INTO male_human_names (name) VALUES ('Blazes');
INSERT INTO male_human_names (name) VALUES ('Frank');
INSERT INTO male_human_names (name) VALUES ('Oswald');

-- HUMAN SURNAMES

INSERT INTO human_surnames (name) VALUES ('Polgar');
INSERT INTO human_surnames (name) VALUES ('Flint');
INSERT INTO human_surnames (name) VALUES ('Evensberg');
INSERT INTO human_surnames (name) VALUES ('Bean');
INSERT INTO human_surnames (name) VALUES ('Gettysville');
INSERT INTO human_surnames (name) VALUES ('Stark');
INSERT INTO human_surnames (name) VALUES ('Spencer');
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
INSERT INTO human_surnames (name) VALUES ('Jones');
INSERT INTO human_surnames (name) VALUES ('Williams');
INSERT INTO human_surnames (name) VALUES ('Moore');
INSERT INTO human_surnames (name) VALUES ('Howard');
INSERT INTO human_surnames (name) VALUES ('McIntyre');
INSERT INTO human_surnames (name) VALUES ('Sharp');
INSERT INTO human_surnames (name) VALUES ('Fanning');
INSERT INTO human_surnames (name) VALUES ('Croak');

-- TIEFLING NAMES

INSERT INTO tiefling_names (name) VALUES ('Blott');
INSERT INTO tiefling_names (name) VALUES ('Runner');
INSERT INTO tiefling_names (name) VALUES ('Scale');
INSERT INTO tiefling_names (name) VALUES ('Wave');
INSERT INTO tiefling_names (name) VALUES ('Luna');
INSERT INTO tiefling_names (name) VALUES ('Horn');
INSERT INTO tiefling_names (name) VALUES ('Playwright');
INSERT INTO tiefling_names (name) VALUES ('Brush');
INSERT INTO tiefling_names (name) VALUES ('Singer');
INSERT INTO tiefling_names (name) VALUES ('Lion');
INSERT INTO tiefling_names (name) VALUES ('Axe');
INSERT INTO tiefling_names (name) VALUES ('Plough');
INSERT INTO tiefling_names (name) VALUES ('Greenfingers');
INSERT INTO tiefling_names (name) VALUES ('Wordsmith');
INSERT INTO tiefling_names (name) VALUES ('Barb');
INSERT INTO tiefling_names (name) VALUES ('Instigator');
INSERT INTO tiefling_names (name) VALUES ('Sleuth');
INSERT INTO tiefling_names (name) VALUES ('Doc');

-- TIEFLING SURNAMES

INSERT INTO tiefling_surnames (name) VALUES ('the Wise');
INSERT INTO tiefling_surnames (name) VALUES ('the Broken');
INSERT INTO tiefling_surnames (name) VALUES ('the Strong');
INSERT INTO tiefling_surnames (name) VALUES ('the Stout');
INSERT INTO tiefling_surnames (name) VALUES ('the Redeemer');
INSERT INTO tiefling_surnames (name) VALUES ('the Revenant');
INSERT INTO tiefling_surnames (name) VALUES ('the Smart');
INSERT INTO tiefling_surnames (name) VALUES ('the Charming');
INSERT INTO tiefling_surnames (name) VALUES ('the Lithe');
INSERT INTO tiefling_surnames (name) VALUES ('the Swift');
INSERT INTO tiefling_surnames (name) VALUES ('the Unfettered');
INSERT INTO tiefling_surnames (name) VALUES ('the Dominating');
INSERT INTO tiefling_surnames (name) VALUES ('the Meek');
INSERT INTO tiefling_surnames (name) VALUES ('the Unobtrusive');
INSERT INTO tiefling_surnames (name) VALUES ('the Painter');
INSERT INTO tiefling_surnames (name) VALUES ('the Librarian');
INSERT INTO tiefling_surnames (name) VALUES ('the Follower');
INSERT INTO tiefling_surnames (name) VALUES ('the Leader');
INSERT INTO tiefling_surnames (name) VALUES ('the Quaint');
INSERT INTO tiefling_surnames (name) VALUES ('the Bold');
INSERT INTO tiefling_surnames (name) VALUES ('the Grand');

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
INSERT INTO dwarf_names (name) VALUES ('Givubo');
INSERT INTO dwarf_names (name) VALUES ('Dwodruhilda');
INSERT INTO dwarf_names (name) VALUES ('Kiggogaer');

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
INSERT INTO dwarf_surnames (name) VALUES ('Twilightfury');
INSERT INTO dwarf_surnames (name) VALUES ('Dragonmaster');
INSERT INTO dwarf_surnames (name) VALUES ('Stronggrip');

-- HALFELF NAMES

INSERT INTO female_halfelf_names (name) VALUES ('Eowin');
INSERT INTO female_halfelf_names (name) VALUES ('Sara');
INSERT INTO female_halfelf_names (name) VALUES ('Judit');
INSERT INTO male_halfelf_names (name) VALUES ('Zach');
INSERT INTO male_halfelf_names (name) VALUES ('Adrian');
INSERT INTO female_halfelf_names (name) VALUES ('Adrian');
INSERT INTO male_halfelf_names (name) VALUES ('James');
INSERT INTO male_halfelf_names (name) VALUES ('Matthew');
INSERT INTO female_halfelf_names (name) VALUES ('Rose');
INSERT INTO male_halfelf_names (name) VALUES ('Hamish');
INSERT INTO male_halfelf_names (name) VALUES ('Euan');
INSERT INTO male_halfelf_names (name) VALUES ('Kris');
INSERT INTO female_halfelf_names (name) VALUES ('Kris');
INSERT INTO female_halfelf_names (name) VALUES ('Reka');
INSERT INTO male_halfelf_names (name) VALUES ('Rod');
INSERT INTO male_halfelf_names (name) VALUES ('Pawel');
INSERT INTO male_halfelf_names (name) VALUES ('Ben');
INSERT INTO female_halfelf_names (name) VALUES ('Sian');
INSERT INTO male_halfelf_names (name) VALUES ('Keith');
INSERT INTO male_halfelf_names (name) VALUES ('Bardem');
INSERT INTO male_halfelf_names (name) VALUES ('Blazes');
INSERT INTO male_halfelf_names (name) VALUES ('Volodar');
INSERT INTO male_halfelf_names (name) VALUES ('Elen');
INSERT INTO male_halfelf_names (name) VALUES ('Agandaur');
INSERT INTO male_halfelf_names (name) VALUES ('Theodmer');
INSERT INTO male_halfelf_names (name) VALUES ('Lafarallin');
INSERT INTO male_halfelf_names (name) VALUES ('Varys');
INSERT INTO male_halfelf_names (name) VALUES ('Adresin');
INSERT INTO male_halfelf_names (name) VALUES ('Pywaln');
INSERT INTO male_halfelf_names (name) VALUES ('Galaeron');
INSERT INTO male_halfelf_names (name) VALUES ('Elpharae');
INSERT INTO male_halfelf_names (name) VALUES ('Laerdya');
INSERT INTO male_halfelf_names (name) VALUES ('Usamea');
INSERT INTO male_halfelf_names (name) VALUES ('Elanil');
INSERT INTO female_halfelf_names (name) VALUES ('Vikki');
INSERT INTO female_halfelf_names (name) VALUES ('Laherl');
INSERT INTO female_halfelf_names (name) VALUES ('Evelyn');
INSERT INTO female_halfelf_names (name) VALUES ('Dido');
INSERT INTO female_halfelf_names (name) VALUES ('Catherine');
INSERT INTO female_halfelf_names (name) VALUES ('Volodar');
INSERT INTO female_halfelf_names (name) VALUES ('Elen');
INSERT INTO female_halfelf_names (name) VALUES ('Agandaur');
INSERT INTO female_halfelf_names (name) VALUES ('Theodmer');
INSERT INTO female_halfelf_names (name) VALUES ('Lafarallin');
INSERT INTO female_halfelf_names (name) VALUES ('Varys');
INSERT INTO female_halfelf_names (name) VALUES ('Adresin');
INSERT INTO female_halfelf_names (name) VALUES ('Pywaln');
INSERT INTO female_halfelf_names (name) VALUES ('Galaeron');
INSERT INTO female_halfelf_names (name) VALUES ('Elpharae');
INSERT INTO female_halfelf_names (name) VALUES ('Laerdya');
INSERT INTO female_halfelf_names (name) VALUES ('Usamea');
INSERT INTO female_halfelf_names (name) VALUES ('Elanil');

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
INSERT INTO gnome_names (name) VALUES ('Formaldehyde');
INSERT INTO gnome_names (name) VALUES ('Gebblis');
INSERT INTO gnome_names (name) VALUES ('Slihere');
INSERT INTO gnome_names (name) VALUES ('Fibonsmy');
INSERT INTO gnome_names (name) VALUES ('Banzberort');
INSERT INTO gnome_names (name) VALUES ('Lazlo');
INSERT INTO gnome_names (name) VALUES ('Kruger');

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
INSERT INTO gnome_surnames (name) VALUES ('Wilders');
INSERT INTO gnome_surnames (name) VALUES ('van Bommel');
INSERT INTO gnome_surnames (name) VALUES ('Cruyff');
INSERT INTO gnome_surnames (name) VALUES ('Cech');
INSERT INTO gnome_surnames (name) VALUES ('Kriezler');

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

-- APPEARANCES

INSERT INTO appearances (appearance) VALUES ('distinctive jewelry is');
INSERT INTO appearances (appearance) VALUES ('piercings are');
INSERT INTO appearances (appearance) VALUES ('flamboyant dress sense is');
INSERT INTO appearances (appearance) VALUES ('formal wear is');
INSERT INTO appearances (appearance) VALUES ('traditional wear is');
INSERT INTO appearances (appearance) VALUES ('scruffy appearance is');
INSERT INTO appearances (appearance) VALUES ('pronounced scar is');
INSERT INTO appearances (appearance) VALUES ('missing teeth are');
INSERT INTO appearances (appearance) VALUES ('missing fingers are');
INSERT INTO appearances (appearance) VALUES ('unusually coloured eyes are');
INSERT INTO appearances (appearance) VALUES ('heterochromia is');
INSERT INTO appearances (appearance) VALUES ('distinctive tattoo is');
INSERT INTO appearances (appearance) VALUES ('full body tattoos are');
INSERT INTO appearances (appearance) VALUES ('birthmark is');
INSERT INTO appearances (appearance) VALUES ('otherworldly skin colour is');
INSERT INTO appearances (appearance) VALUES ('bald head is');
INSERT INTO appearances (appearance) VALUES ('braided beard is');
INSERT INTO appearances (appearance) VALUES ('braided hair is');
INSERT INTO appearances (appearance) VALUES ('unusual hair colour is');
INSERT INTO appearances (appearance) VALUES ('nervous eye twitch is');
INSERT INTO appearances (appearance) VALUES ('distinctive nose is');
INSERT INTO appearances (appearance) VALUES ('distinctive, crooked posture is');
INSERT INTO appearances (appearance) VALUES ('distinctive, rigid posture is');
INSERT INTO appearances (appearance) VALUES ('exceptional beauty is');
INSERT INTO appearances (appearance) VALUES ('exceptional ugliness is');

-- TRAITS

INSERT INTO traits (trait) VALUES ('an argumentative');
INSERT INTO traits (trait) VALUES ('an arrogant');
INSERT INTO traits (trait) VALUES ('a blustering');
INSERT INTO traits (trait) VALUES ('a rude');
INSERT INTO traits (trait) VALUES ('a curious');
INSERT INTO traits (trait) VALUES ('a friendly');
INSERT INTO traits (trait) VALUES ('an honest');
INSERT INTO traits (trait) VALUES ('a hot tempered');
INSERT INTO traits (trait) VALUES ('an irritable');
INSERT INTO traits (trait) VALUES ('a ponderous');
INSERT INTO traits (trait) VALUES ('a quiet');
INSERT INTO traits (trait) VALUES ('a suspicious');
INSERT INTO traits (trait) VALUES ('a melancholic');

-- TALENTS

INSERT INTO talents (talent) VALUES ('plays a musical instrument');
INSERT INTO talents (talent) VALUES ('speaks several languages fluently');
INSERT INTO talents (talent) VALUES ('is ubelievably lucky');
INSERT INTO talents (talent) VALUES ('has a perfect memory');
INSERT INTO talents (talent) VALUES ('is great with animals');
INSERT INTO talents (talent) VALUES ('is great with children');
INSERT INTO talents (talent) VALUES ('is great at solving puzzles');
INSERT INTO talents (talent) VALUES ('is great at one particular game');
INSERT INTO talents (talent) VALUES ('is great at impressions');
INSERT INTO talents (talent) VALUES ('draws beautifully');
INSERT INTO talents (talent) VALUES ('paints beautifully');
INSERT INTO talents (talent) VALUES ('sings beautifully');
INSERT INTO talents (talent) VALUES ('drinks everyone under the table');
INSERT INTO talents (talent) VALUES ('is an expert carpenter');
INSERT INTO talents (talent) VALUES ('is an expert cook');
INSERT INTO talents (talent) VALUES ('is an expert dart thrower and rock skipper');
INSERT INTO talents (talent) VALUES ('is an expert juggler');
INSERT INTO talents (talent) VALUES ('is a skilled actor and master of disguise');
INSERT INTO talents (talent) VALUES ('is a skilled dancer');
INSERT INTO talents (talent) VALUES ('knows the thieves secret tongue');

-- MANNERISMS

INSERT INTO mannerisms (mannerism) VALUES ('is prone to singing');
INSERT INTO mannerisms (mannerism) VALUES ('is prone to whislting');
INSERT INTO mannerisms (mannerism) VALUES ('is prone to humming quietly');
INSERT INTO mannerisms (mannerism) VALUES ('speaks in rhyme');
INSERT INTO mannerisms (mannerism) VALUES ('speaks in a peculiar way');
INSERT INTO mannerisms (mannerism) VALUES ('has a particularly high pitched voice');
INSERT INTO mannerisms (mannerism) VALUES ('has a particularly low pitched voice');
INSERT INTO mannerisms (mannerism) VALUES ('slurs their words');
INSERT INTO mannerisms (mannerism) VALUES ('has a lisp');
INSERT INTO mannerisms (mannerism) VALUES ('stutters');
INSERT INTO mannerisms (mannerism) VALUES ('enunciates over clearly');
INSERT INTO mannerisms (mannerism) VALUES ('speaks loudly');
INSERT INTO mannerisms (mannerism) VALUES ('talks only in whispers');
INSERT INTO mannerisms (mannerism) VALUES ('frequently uses flowery speech');
INSERT INTO mannerisms (mannerism) VALUES ('frequently uses long words');
INSERT INTO mannerisms (mannerism) VALUES ('uses colourful oaths and exclamations');
INSERT INTO mannerisms (mannerism) VALUES ('makes constant jokes and puns');
INSERT INTO mannerisms (mannerism) VALUES ('is prone to predictions of doom');
INSERT INTO mannerisms (mannerism) VALUES ('fidgets constantly');
INSERT INTO mannerisms (mannerism) VALUES ('squints alot');
INSERT INTO mannerisms (mannerism) VALUES ('frequently uses the wrong word');
INSERT INTO mannerisms (mannerism) VALUES ('often stares into the distance');
INSERT INTO mannerisms (mannerism) VALUES ('is always seen chewing something');
INSERT INTO mannerisms (mannerism) VALUES ('has a tendency to pace alot');
INSERT INTO mannerisms (mannerism) VALUES ('has a tendency to tap their fingers');
INSERT INTO mannerisms (mannerism) VALUES ('has a tendency to bite their fingernails');
INSERT INTO mannerisms (mannerism) VALUES ('has a tendency to twirl their hair');
INSERT INTO mannerisms (mannerism) VALUES ('has a tendency to twirl their beard');

-- IDEALS

INSERT INTO ideals (ideal) VALUES ('Beauty');
INSERT INTO ideals (ideal) VALUES ('Charity');
INSERT INTO ideals (ideal) VALUES ('The Greater Good');
INSERT INTO ideals (ideal) VALUES ('Life');
INSERT INTO ideals (ideal) VALUES ('Repsect');
INSERT INTO ideals (ideal) VALUES ('Self-Sacrifice');

INSERT INTO ideals (ideal) VALUES ('Domination');
INSERT INTO ideals (ideal) VALUES ('Greed');
INSERT INTO ideals (ideal) VALUES ('Might');
INSERT INTO ideals (ideal) VALUES ('Pain');
INSERT INTO ideals (ideal) VALUES ('Retribution');
INSERT INTO ideals (ideal) VALUES ('Vengeance');
INSERT INTO ideals (ideal) VALUES ('Slaughter');

INSERT INTO ideals (ideal) VALUES ('Community');
INSERT INTO ideals (ideal) VALUES ('Fairness');
INSERT INTO ideals (ideal) VALUES ('Honour');
INSERT INTO ideals (ideal) VALUES ('Logic');
INSERT INTO ideals (ideal) VALUES ('Responsibility');
INSERT INTO ideals (ideal) VALUES ('Tradition');

INSERT INTO ideals (ideal) VALUES ('Change');
INSERT INTO ideals (ideal) VALUES ('Creativity');
INSERT INTO ideals (ideal) VALUES ('Freedom');
INSERT INTO ideals (ideal) VALUES ('Independence');
INSERT INTO ideals (ideal) VALUES ('Progress');
INSERT INTO ideals (ideal) VALUES ('whatever whim takes them');

INSERT INTO ideals (ideal) VALUES ('Balance');
INSERT INTO ideals (ideal) VALUES ('Knowledge');
INSERT INTO ideals (ideal) VALUES ('a live and let live attitude');
INSERT INTO ideals (ideal) VALUES ('Moderation');
INSERT INTO ideals (ideal) VALUES ('Neutrality');
INSERT INTO ideals (ideal) VALUES ('Peace');

INSERT INTO ideals (ideal) VALUES ('Aspiration');
INSERT INTO ideals (ideal) VALUES ('Discovery');
INSERT INTO ideals (ideal) VALUES ('Glory');
INSERT INTO ideals (ideal) VALUES ('their Nation');
INSERT INTO ideals (ideal) VALUES ('Redemption');
INSERT INTO ideals (ideal) VALUES ('Self-Improvement');

-- BONDS

INSERT INTO bonds (bond) VALUES ('dedicated to fulfilling their personal life goal');
INSERT INTO bonds (bond) VALUES ('protective of close family members');
INSERT INTO bonds (bond) VALUES ('protective of colleagues');
INSERT INTO bonds (bond) VALUES ('protective of compatriots');
INSERT INTO bonds (bond) VALUES ('loyal to their benefactor');
INSERT INTO bonds (bond) VALUES ('captivated by a romantic interest');
INSERT INTO bonds (bond) VALUES ('drawn to a special place');
INSERT INTO bonds (bond) VALUES ('protective of a sentimental keepsake');
INSERT INTO bonds (bond) VALUES ('protective of a valuable possession');
INSERT INTO bonds (bond) VALUES ('out for revenge against all those who wronged them');

-- FLAWS

INSERT INTO flaws (flaw) VALUES ('a forbidden love');
INSERT INTO flaws (flaw) VALUES ('a susceptibility to romance');
INSERT INTO flaws (flaw) VALUES ('an enjoyment of decadent pleasures');
INSERT INTO flaws (flaw) VALUES ('their arrogance');
INSERT INTO flaws (flaw) VALUES ('an all-consuming envy of anothers possessions');
INSERT INTO flaws (flaw) VALUES ('an all-consuming envy of anothers station');
INSERT INTO flaws (flaw) VALUES ('an overpowering greed');
INSERT INTO flaws (flaw) VALUES ('that they fly into a rage at the slightest provocation');
INSERT INTO flaws (flaw) VALUES ('a powerful enemy');
INSERT INTO flaws (flaw) VALUES ('an overpowering arachnaphobia');
INSERT INTO flaws (flaw) VALUES ('an overpowering acrophobia');
INSERT INTO flaws (flaw) VALUES ('an overpowering agoraphobia');
INSERT INTO flaws (flaw) VALUES ('an overpowering claustrophobia');
INSERT INTO flaws (flaw) VALUES ('a shameful and scandalous history');
INSERT INTO flaws (flaw) VALUES ('a secret crime they committed long ago');
INSERT INTO flaws (flaw) VALUES ('their possession of forbidden lore');
INSERT INTO flaws (flaw) VALUES ('their foolhardy bravery');
INSERT INTO flaws (flaw) VALUES ('their hero complex');
INSERT INTO flaws (flaw) VALUES ('their insatiable blood lust');
INSERT INTO flaws (flaw) VALUES ('an irrational deathwish');
INSERT INTO flaws (flaw) VALUES ('their tendency to overthink things');
INSERT INTO flaws (flaw) VALUES ('their crippling self-doubt');

-- BIRTHPLACES

INSERT INTO birthplaces (birthplace) VALUES ('in a local tavern');
INSERT INTO birthplaces (birthplace) VALUES ('across the sea');
INSERT INTO birthplaces (birthplace) VALUES ('under a bridge');
INSERT INTO birthplaces (birthplace) VALUES ('across the desert');
INSERT INTO birthplaces (birthplace) VALUES ('in a yurt');
INSERT INTO birthplaces (birthplace) VALUES ('in the sewers');
INSERT INTO birthplaces (birthplace) VALUES ('under the auspices of the blood moon');
INSERT INTO birthplaces (birthplace) VALUES ('into a noble family');
INSERT INTO birthplaces (birthplace) VALUES ('under tragic circumstances');
INSERT INTO birthplaces (birthplace) VALUES ('into a broken family');
INSERT INTO birthplaces (birthplace) VALUES ('into a loving family');
INSERT INTO birthplaces (birthplace) VALUES ('in a field');
INSERT INTO birthplaces (birthplace) VALUES ('in a barn');
INSERT INTO birthplaces (birthplace) VALUES ('in the slums');
INSERT INTO birthplaces (birthplace) VALUES ('in the mountains');
INSERT INTO birthplaces (birthplace) VALUES ('in the jungle');

-- TESTS
