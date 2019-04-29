const NPC = require('../models/npc.js');

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
      console.log(newChar);
    })
  }
}

module.exports = GenerateFormView;
