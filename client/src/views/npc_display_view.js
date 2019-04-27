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

    const header = document.createElement('div');
    header.classList.add('display-header');
    header.innerHTML = `${data.first_name} ${data.last_name}`;

    const job = document.createElement('div');
    job.classList.add('display-job');
    job.innerHTML = data.job;

    card.appendChild(header);
    card.appendChild(job);

    return card;
  }

}

module.exports = NpcDisplayView;
