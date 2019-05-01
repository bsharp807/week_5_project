const RNG = require('../models/rng.js');
const PubSub = require('../helpers/pub_sub.js');

class RandomGeneration {

  constructor() {

    this.data = null;

  }

  receiveTableData() {
    PubSub.subscribe('Table:table-data-ready', (evt) => {
      this.data = evt.detail;
    })
  }

  filteredMaleFirstName(race) {
    switch(race){
      case 'Orc':
        return this.randomOrcFirstName();
        break;
      case 'Elf':
        return this.randomElfFirstName();
        break;
      case 'Human':
        return this.randomHumanFirstName();
        break;
      case 'Tiefling':
        return this.randomTieflingFirstName();
        break;
      case 'Dwarf':
        return this.randomDwarfFirstName();
        break;
      case 'Dragonborn':
        return this.randomDragonbornFirstName();
        break;
      case 'Halfelf':
        return this.randomHalfelfFirstName();
        break;
      case 'Halfling':
        return this.randomHalflingFirstName();
        break;
      case 'Gnome':
        return this.randomGnomeFirstName();
        break;
      default:
        return 'SWITCH ERROR FIRST NAME';
    }
  }

  filteredFemaleFirstName(race) {
    switch(race){
      case 'Orc':
        return this.randomOrcFirstName();
        break;
      case 'Elf':
        return this.randomElfFirstName();
        break;
      case 'Human':
        return this.randomHumanFemaleFirstName();
        break;
      case 'Tiefling':
        return this.randomTieflingFirstName();
        break;
      case 'Dwarf':
        return this.randomDwarfFirstName();
        break;
      case 'Dragonborn':
        return this.randomDragonbornFirstName();
        break;
      case 'Halfelf':
        return this.randomHalfelfFemaleFirstName();
        break;
      case 'Halfling':
        return this.randomHalflingFirstName();
        break;
      case 'Gnome':
        return this.randomGnomeFirstName();
        break;
      default:
        return 'SWITCH ERROR FIRST NAME';
    }
  }

  filteredLastName(race) {
    switch(race){
      case 'Orc':
        return this.randomOrcLastName();
        break;
      case 'Elf':
        return this.randomElfLastName();
        break;
      case 'Human':
        return this.randomHumanLastName();
        break;
      case 'Tiefling':
        return this.randomTieflingLastName();
        break;
      case 'Dwarf':
        return this.randomDwarfLastName();
        break;
      case 'Dragonborn':
        return this.randomDragonbornLastName();
        break;
      case 'Halfelf':
        return this.randomHalfelfLastName();
        break;
      case 'Halfling':
        return this.randomHalflingLastName();
        break;
      case 'Gnome':
        return this.randomGnomeLastName();
        break;
      default:
        return 'SWITCH ERROR LAST NAME';
    }
  }

  randomOrcFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.orc_names);
    return firstName.name
  }

  randomElfFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.elf_names);
    return firstName.name
  }

  randomHumanFemaleFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.female_human_names);
    return firstName.name
  }

  randomHumanMaleFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.male_human_names);
    return firstName.name
  }

  randomTieflingFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.tiefling_names);
    return firstName.name
  }

  randomDwarfFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.dwarf_names);
    return firstName.name
  }

  randomDragonbornFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.dragonborn_names);
    return firstName.name
  }

  randomGnomeFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.gnome_names);
    return firstName.name
  }

  randomHalfelfFemaleFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.female_halfelf_names);
    return firstName.name
  }

  randomHalfelfMaleFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.male_halfelf_names);
    return firstName.name
  }

  randomHalflingFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.halfling_names);
    return firstName.name
  }

  randomOrcLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.orc_surnames);
    return lastName.name
  }

  randomDragonbornLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.dragonborn_surnames);
    return lastName.name
  }

  randomGnomeLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.gnome_surnames);
    return lastName.name
  }

  randomHalfelfLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.halfelf_surnames);
    return lastName.name
  }

  randomHalflingLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.halfling_surnames);
    return lastName.name
  }

  randomElfLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.elf_surnames);
    return lastName.name
  }

  randomHumanLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.human_surnames);
    return lastName.name
  }

  randomTieflingLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.tiefling_surnames);
    return lastName.name
  }

  randomDwarfLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.dwarf_surnames);
    return lastName.name
  }

  randomRace() {
    const rng = new RNG();
    const race = rng.randArray(this.data.races);
    return race.race
  }

  randomJob() {
    const rng = new RNG();
    const job = rng.randArray(this.data.jobs);
    return job.job
  }

  randomAge() {
    const rng = new RNG();
    return rng.randNum(25, 14);
  }

  randomSkill() {
    const rng = new RNG();
    const skill = rng.randArray(this.data.skills);
    return skill.skill;
  }

  randomTrait() {
    const rng = new RNG();
    const trait = rng.randArray(this.data.traits);
    return trait.trait;
  }

  randomAppearance() {
    const rng = new RNG();
    const appearance = rng.randArray(this.data.appearances);
    return appearance.appearance;
  }

  randomTalent() {
    const rng = new RNG();
    const talent = rng.randArray(this.data.talents);
    return talent.talent;
  }

  randomMannerism() {
    const rng = new RNG();
    const mannerism = rng.randArray(this.data.mannerisms);
    return mannerism.mannerism;
  }

  randomIdeal() {
    const rng = new RNG();
    const ideal = rng.randArray(this.data.ideals);
    return ideal.ideal;
  }

  randomBond() {
    const rng = new RNG();
    const bond = rng.randArray(this.data.bonds);
    return bond.bond;
  }

  randomFlaw() {
    const rng = new RNG();
    const flaw = rng.randArray(this.data.flaws);
    return flaw.flaw;
  }

  randomBirthplace() {
    const rng = new RNG();
    const birthplace = rng.randArray(this.data.birthplaces);
    return birthplace.birthplace;
  }

  randomGender() {
    const rng = new RNG();
    const decider = rng.randNum(2,1);
    console.log(decider);
    switch(decider) {
      case 1:
        return 'female';
        break;
      case 2:
        return 'male';
        break;
      default:
        return 'ERROR IN GENDER SWITCH';
    }
  }
}

module.exports = RandomGeneration;
