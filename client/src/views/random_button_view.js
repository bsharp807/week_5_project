const NPC = require('../models/npc.js');
const RNG = require('../models/rng.js');
const PubSub = require('../helpers/pub_sub.js');

class RandomButtonView {

  constructor() {

    this.element = document.querySelector('#random-button');
    this.data = null;

  }

  receiveTableData() {
    PubSub.subscribe('Table:table-data-ready', (evt) => {
      this.data = evt.detail;
    })
  }

  bindEvents() {
    this.element.addEventListener('click', (evt) => {
      const newChar = {};
      newChar.race = this.randomRace();
      newChar.first_name = this.filteredFirstName(newChar.race);
      newChar.last_name = this.randomLastName();
      newChar.job = this.randomJob();
      newChar.age = this.randomAge();
      newChar.high_skill = this.randomSkill();
      newChar.low_skill = this.randomSkill();

      const npc = new NPC();
      npc.postData(newChar);
    })
  }

  filteredFirstName(race) {
    switch(race){
      case 'Orc':
        return this.randomOrcFirstName();
        break;
      case 'Elf':
        return this.randomElfFirstName();
        break;
      case: 'Human':
        return this.randomHumanFirstName();
        break;
      case: 'Tiefling':
        return this.randomTieflingFirstName();
        break;
      case: 'Dwarf':
        return this.randomDwarfFirstName();
        break;
      default:
        return 'SWITCH ERROR NAME';
    }
  }

  randomOrcFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.orc_names);
    return firstName.name
  }



  randomLastName() {
    const rng = new RNG();
    const lastName = rng.randArray(this.data.surnames);
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


}

module.exports = RandomButtonView;
