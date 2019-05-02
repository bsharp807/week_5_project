const NPC = require('../models/npc.js');

class GenerateFormView {

  constructor() {

    this.hidden = document.querySelector('#hidden-generate');
    this.form = document.querySelector('#generate-form');
    this.background = document.querySelector('#catch-all');
    this.firstNameRNG = document.querySelector('#firstNameRNG');
    this.lastNameRNG = document.querySelector('#lastNameRNG');
    this.ageRNG = document.querySelector('#ageRNG');
    this.raceRNG = document.querySelector('#raceRNG');
    this.jobRNG = document.querySelector('#jobRNG');
    this.cancel = document.querySelector('#cancel-button');

  }

  bindEvents(rand) {
    this.form.addEventListener('submit', (evt) => {
      evt.preventDefault();

      const newChar = {};
      const input = evt.target;

      newChar.race = input.race.value;
      newChar.gender = input.gender.value;

      if(input.firstName.value) {
        newChar.first_name = input.firstName.value;
      } else {newChar.first_name = rand.genderedRaceNameFilter(newChar.race, newChar.gender)}

      if(input.lastName.value) {
        newChar.last_name = input.lastName.value;
      } else {newChar.last_name = rand.filteredLastName(newChar.race)}

      newChar.job = input.jobs.value;
      newChar.age = input.age.value;

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

      const npc = new NPC();
      npc.postData(newChar);

      this.updateStyle();
      this.form.reset();
    })
  }

  firstNameRNGButton(rand) {
    this.firstNameRNG.addEventListener('click', () => {
      this.form.firstName.value = rand.genderedRaceNameFilter(this.form.race.value, this.form.gender.value);
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

  cancelButton() {
    this.cancel.addEventListener('click', () =>{
      this.updateStyle();
    })
  }

  updateStyle() {
    this.formFade();
    this.backgroundFadeIn();
  }

  formFade() {
    this.hidden.style.transitionDelay = '0s';
    this.hidden.classList.remove('fadeIn');
    this.hidden.classList.add('fade');
  }

  backgroundFadeIn() {
    this.background.style.transitionDelay = '0.8s';
    this.background.classList.remove('fade');
    this.background.classList.add('fadeIn');
  }
}

module.exports = GenerateFormView;
