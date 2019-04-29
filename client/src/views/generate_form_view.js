const NPC = require('../models/npc.js');

class GenerateFormView {

  constructor() {

    this.form = document.querySelector('#generate-form');

  }

  bindEvents(rand) {
    this.form.addEventListener('submit', (evt) => {
      evt.preventDefault();


      const newChar = {};
      const input = evt.target;

      newChar.race = input.race.value;

      if(input.firstName.value) {
        newChar.first_name = input.firstName.value;
      } else {newChar.first_name = rand.filteredFirstName(newChar.race)}

      if(input.lastName.value) {
        newChar.last_name = input.lastName.value;
      } else {newChar.last_name = rand.filteredLastName(newChar.race)}

      newChar.job = input.jobs.value;
      newChar.age = input.age.value;
      newChar.high_skill = rand.randomSkill();
      newChar.low_skill = rand.randomSkill();

      console.log(newChar);

      const npc = new NPC();
      npc.postData(newChar);
    })
  }

}

module.exports = GenerateFormView;
