const NPC = require('../models/npc.js');

class RandomButtonView {

  constructor() {

    this.element = document.querySelector('#random-button');

  }

  bindEvents(rand) {
    this.element.addEventListener('click', (evt) => {
      const newChar = {};
      newChar.race = rand.randomRace();
      newChar.gender = rand.randomGender();

      switch(newChar.gender) {
        case 'female':
          newChar.first_name = rand.filteredFemaleFirstName(newChar.race);
          break;
        case 'male':
          newChar.first_name = rand.filteredMaleFirstName(newChar.race);
          break;
        default:
          return 'ERROR IN GENDERED NAME SWITCH';
      }

      newChar.last_name = rand.filteredLastName(newChar.race);
      newChar.job = rand.randomJob();
      newChar.age = rand.randomAge();
      newChar.trait = rand.randomTrait();
      newChar.appearance = rand.randomAppearance();
      newChar.talent = rand.randomTalent();
      newChar.mannerism = rand.randomMannerism();
      newChar.ideal = rand.randomIdeal();
      newChar.bond = rand.randomBond();
      newChar.birthplace = rand.randomBirthplace();
      newChar.flaw = rand.randomFlaw();

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
