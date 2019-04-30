const PubSub = require('../helpers/pub_sub.js');

class ListView {

  constructor() {

    this.container = document.querySelector('#list-display');
    this.hidden = document.querySelector('#list-container');

  }

  bindEvents() {
    PubSub.subscribe('List:list-data-ready', (evt) => {
      const cards = evt.detail;
      this.renderDisplay(cards);
    })
  }

  renderDisplay(cards) {
    this.clearContents();

    cards.forEach((npc) => {
      const segment = this.createSegment(npc);
      this.container.appendChild(segment);
    })
  }

  clearContents() {
    this.container.innerHTML = '';
  }

  createSegment(data) {
    const card = document.createElement('div');
    card.classList.add('list-card');

    const image = document.createElement('img');
    image.classList.add('list-image');

    const header = document.createElement('div');
    header.classList.add('list-header');
    header.innerHTML = `${data.first_name} ${data.last_name}`;

    const race = document.createElement('div');
    race.classList.add('list-race');
    race.innerHTML = data.race;

    const job = document.createElement('div');
    job.classList.add('list-job');
    job.innerHTML = data.job;

    const age = document.createElement('div');
    age.classList.add('list-age');
    age.innerHTML = data.age;

    card.appendChild(image);
    card.appendChild(header);
    card.appendChild(race);
    card.appendChild(job);
    card.appendChild(age);

    card.addEventListener('click', () => {
      this.hidden.style.display = 'none';
      PubSub.publish('ListView:id-from-card', data);
    })

    return card;
  }

}

module.exports = ListView;
