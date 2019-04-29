const NPC = require('../models/npc.js');

class RandomButtonView {

  constructor() {

    this.element = document.querySelector('#random-button');

  }

  bindEvents(rand) {
    this.element.addEventListener('click', (evt) => {
      const newChar = {};
      newChar.race = rand.randomRace();
      newChar.first_name = rand.filteredFirstName(newChar.race);
      newChar.last_name = rand.filteredLastName(newChar.race);
      newChar.job = rand.randomJob();
      newChar.age = rand.randomAge();
      newChar.high_skill = rand.randomSkill();
      newChar.low_skill = rand.randomSkill();
      if (newChar.low_skill === newChar.high_skill) {
        newChar.low_skill = rand.randomSkill();
      }

      const npc = new NPC();
      npc.postData(newChar);
    })
  }
}

module.exports = RandomButtonView;
