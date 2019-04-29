const NPC = require('../models/npc.js');
const RNG = require('../models/rng.js');
const PubSub = require('../helpers/pub_sub.js');

class GenerateFormView {

  constructor() {

    this.form = document.querySelector('#generate-form');
    this.data = null

  }

  receiveTableData() {
    PubSub.subscribe('Table:table-data-ready', (evt) => {
      this.data = evt.detail;
    })
  }

  bindEvents() {
    this.form.addEventListener('submit', (evt) => {
      evt.preventDefault();
      const newChar = {};
      const input = evt.target;
      newChar.first_name = input.firstName.value;
      newChar.last_name = input.lastName.value;
      newChar.race = input.race.value;
      newChar.job = input.jobs.value;
      newChar.age = input.age.value;
      newChar.high_skill = this.randomSkill();
      newChar.low_skill = this.randomSkill();

      console.log(newChar);

      const npc = new NPC();
      npc.postData(newChar);
    })
  }

  randomFirstName() {
    const rng = new RNG();
    const firstName = rng.randArray(this.data.names);
    return firstName.name
  }

  randomSkill() {
    const rng = new RNG();
    const skill = rng.randArray(this.data.skills);
    return skill.skill;
  }
}

module.exports = GenerateFormView;
