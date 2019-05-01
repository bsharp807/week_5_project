const PubSub = require('../helpers/pub_sub.js');

class ListButtonView {

  constructor() {

    this.container = document.querySelector('#list-container');
    this.button = document.querySelector('#list-button');

  }

  bindEvents() {
    this.button.addEventListener('click', () => {
      this.container.style.display = 'block';
      PubSub.publish('ListButtonView:list-button-clicked');
    })
  }
}

module.exports = ListButtonView;
