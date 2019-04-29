const NPC = require('../models/npc.js');
const RNG = require('../models/rng.js');
const RandomGeneration = require('../models/random_generation.js')
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
      const rand = new RandomGeneration(this.data)
      const newChar = {};
      newChar.race = rand.randomRace();
      newChar.first_name = rand.filteredFirstName(newChar.race);
      newChar.last_name = rand.filteredLastName(newChar.race);
      newChar.job = rand.randomJob();
      newChar.age = rand.randomAge();
      newChar.high_skill = rand.randomSkill();
      newChar.low_skill = rand.randomSkill();
      if (newChar.low_skill === newChar.highSkill) {
        newChar.low_skill = rand.randomSkill();
      }

      const npc = new NPC();
      npc.postData(newChar);
    })
  }
}

module.exports = RandomButtonView;
