const NPC = require('../models/npc.js');
const RNG = require('../models/rng.js');
const PubSub = require('../helpers/pub_sub.js');

class randomButtonView {

  constructor() {

    this.element = doucment.querySelector('#random-button');
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
      newChar.first_name = this.randomFirstName();
      newChar.last_name = this.randomLastName();
      newChar.race = this.randomRace();
      newChar.job = this.randomJob();
      newChar.age = this.randomAge();
      newChar.high_skill = this.randomSkill();
      newChar.low_skill = this.randomSkill();

      console.log(newChar);

      const npc = new NPC();
      // npc.postData(newChar);
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
