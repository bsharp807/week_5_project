const NPC = require('../models/npc.js');
const RNG = require('../models/rng.js');

class GenerateFormView {

  constructor() {

    this.form = document.querySelector('#generate-form');

  }

  bindEvents() {
    this.form.addEventListener('submit', (evt) => {
      evt.preventDefault();
      const newChar = {};
      newChar.first_name = evt.target.firstName.value;
      newChar.last_name = evt.target.lastName.value;
      newChar.race = evt.target.race.value;
      newChar.job = evt.target.jobs.value;
      newChar.age = evt.target.age.value;
      newChar.high_skill = 'Dexterity';
      newChar.low_skill = 'Constitution';

      const npc = new NPC();
      npc.postData(newChar);
    })
  }
}

module.exports = GenerateFormView;
