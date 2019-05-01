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
    image.classList.add('display-image', 'display-item');
    image.src = `../images/${data.gender}/${data.race}.jpg`;

    const header = document.createElement('div');
    header.classList.add('display-header', 'display-item');
    header.innerHTML = `${data.first_name} ${data.last_name}`;

    const race = document.createElement('div');
    race.classList.add('display-race',  'display-item');
    race.innerHTML = data.race;

    const job = document.createElement('div');
    job.classList.add('display-job', 'display-item');
    job.innerHTML = data.job;

    const age = document.createElement('div');
    age.classList.add('display-age', 'display-item');
    age.innerHTML = data.age;

    const highSkillHeading = document.createElement('div');
    highSkillHeading.classList.add('display-highSkillHeading', 'display-item');
    highSkillHeading.innerHTML = 'High Skill';

    const highSkill = document.createElement('div');
    highSkill.classList.add('display-highSkill', 'display-item');
    highSkill.innerHTML = data.high_skill;

    const lowSkillHeading = document.createElement('div');
    lowSkillHeading.classList.add('display-lowSkillHeading', 'display-item');
    lowSkillHeading.innerHTML = 'Low Skill';

    const lowSkill = document.createElement('div');
    lowSkill.classList.add('display-lowSkill', 'display-item');
    lowSkill.innerHTML = data.low_skill;

    const description = document.createElement('div');
    description.classList.add('display-description', 'display-item');
    description.innerHTML = `${data.first_name} ${data.last_name}, the ${data.race} ${data.job}, is ${data.trait} character whose ${data.appearance} the first thing you notice. They are ${data.age} years old, and what they lack in ${data.low_skill} they make up for in ${data.high_skill}. Rumour has it they were born ${data.birthplace}. ${data.first_name} ${data.talent} but also ${data.mannerism}. They value  ${data.ideal} above all else, and are ${data.bond}. Finally, their biggest flaw is ${data.flaw}.`

    card.appendChild(image);
    card.appendChild(header);
    card.appendChild(race);
    card.appendChild(job);
    card.appendChild(age);
    card.appendChild(highSkillHeading);
    card.appendChild(highSkill);
    card.appendChild(lowSkillHeading);
    card.appendChild(lowSkill);
    card.appendChild(description);

    return card;
  }

}

module.exports = NpcDisplayView;
