const NPC = require('../models/npc.js');

class GenerateFormView {

  constructor() {

    this.hidden = document.querySelector('#hidden-generate');
    this.form = document.querySelector('#generate-form');
    this.firstNameRNG = document.querySelector('#firstNameRNG');
    this.lastNameRNG = document.querySelector('#lastNameRNG');
    this.ageRNG = document.querySelector('#ageRNG');
    this.raceRNG = document.querySelector('#raceRNG');
    this.jobRNG = document.querySelector('#jobRNG');

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

      const npc = new NPC();
      npc.postData(newChar);

      this.hidden.style.visibility = 'hidden';
      this.form.reset();
    })
  }

  firstNameRNGButton(rand) {
    this.firstNameRNG.addEventListener('click', () => {
      this.form.firstName.value = rand.filteredFirstName(this.form.race.value);
    })
  }

  lastNameRNGButton(rand) {
    this.lastNameRNG.addEventListener('click', () => {
      this.form.lastName.value = rand.filteredLastName(this.form.race.value);
    })
  }

  ageRNGButton(rand) {
    this.ageRNG.addEventListener('click', () => {
      this.form.age.value = rand.randomAge();
    })
  }

  raceRNGButton(rand) {
    this.raceRNG.addEventListener('click', () => {
      this.form.race.value = rand.randomRace();
    })
  }

  jobRNGButton(rand) {
    this.jobRNG.addEventListener('click', () => {
      this.form.jobs.value = rand.randomJob();
    })
  }
}

module.exports = GenerateFormView;
