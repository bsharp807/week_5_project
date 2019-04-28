const PubSub = require('../helpers/pub_sub.js');

class NpcDisplayView {

  constructor() {

    this.container = document.querySelector('#display');

  }

  bindEvents() {
    PubSub.subscribe('NPC:initial-data-ready', (evt) => {
      const data = (evt.detail);
      this.renderDisplay(data);
    })
  }

  renderDisplay(data) {
    this.clearContents();

    const card = this.createCard(data);
    this.container.appendChild(card);
  }

  clearContents() {
    this.container.innerHTML = '';
  }

  createCard(data) {
    const card = document.createElement('div');
    card.classList.add('display-card');

    const image = document.createElement('img');
    image.classList.add('display-image');

    const header = document.createElement('div');
    header.classList.add('display-header');
    header.innerHTML = `${data.first_name} ${data.last_name}`;

    const race = document.createElement('div');
    race.classList.add('display-race');
    race.innerHTML = data.race;

    const job = document.createElement('div');
    job.classList.add('display-job');
    job.innerHTML = data.job;

    const highSkill = document.createElement('div');
    highSkill.classList.add('display-highSkill');
    highSkill.innerHTML = data.high_skill;

    const lowSkill = document.createElement('div');
    lowSkill.classList.add('display-lowSkill');
    lowSkill.innerHTML = data.low_skill;

    card.appendChild(image);
    card.appendChild(header);
    card.appendChild(race);
    card.appendChild(job);
    card.appendChild(highSkill);
    card.appendChild(lowSkill);

    return card;
  }

}

module.exports = NpcDisplayView;
