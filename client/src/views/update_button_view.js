const PubSub = require('../helpers/pub_sub.js');

class UpdateButtonView {

  constructor() {

    this.button = document.querySelector('#update-button');
    this.generate = document.querySelector('#hidden-update');
    this.background = document.querySelector('#catch-all');
    this.updater = document.querySelector('#update-form');

    this.npc = null;

  }

  updateButtonListener() {
    PubSub.subscribe('NPC:initial-data-ready', (evt) => {
      this.npc = evt.detail;
    })
  }

  bindEvents() {
    this.button.addEventListener('click', () => {
      this.fadeOutBackground();
      this.fadeInUpdateForm();
      this.fillNpcDetails();
    })
  }

  fadeOutBackground() {
    this.background.style.transitionDelay = '0s';
    this.background.classList.remove('fadeIn');
    this.background.classList.add('fade');
  }

  fadeInUpdateForm() {
    this.generate.style.transitionDelay = '0.8s';
    this.generate.classList.remove('fade');
    this.generate.classList.add('fadeIn');
  }

  fillNpcDetails() {
    this.updater.firstName.value = this.npc.first_name;
    this.updater.lastName.value = this.npc.last_name;
    this.updater.age.value = this.npc.age;
    this.updater.race.value = this.npc.race;
    this.updater.jobs.value = this.npc.job;
    this.updater.gender.value = this.npc.gender;
  }
}

module.exports = UpdateButtonView;
