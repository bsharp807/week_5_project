const PubSub = require('../helpers/pub_sub.js');

class ListButtonView {

  constructor() {

    this.container = document.querySelector('#list-container');
    this.button = document.querySelector('#list-button');
    this.overallHeader = document.querySelector('#overall-header');
    this.secondHeader = document.querySelector('#second-header');
    this.displayPage = document.querySelector('#display-page');

  }

  bindEvents() {
    this.button.addEventListener('click', () => {
      this.updateStyle();
      PubSub.publish('ListButtonView:list-button-clicked');
    })
  }

  updateStyle() {
    this.fadeOverallHeader();
    this.fadeInSecondHeader();
    this.fadeDisplayPage();
    this.fadeInListPage();
  }

  fadeOverallHeader() {
    this.overallHeader.style.transitionDelay = '0s';
    this.overallHeader.classList.remove('fadeIn');
    this.overallHeader.classList.add('fade');
  }

  fadeInSecondHeader() {
    this.secondHeader.classList.remove('fade');
    this.secondHeader.style.transitionDelay = '0.8s';
    this.secondHeader.classList.add('fadeIn');
  }

  fadeDisplayPage() {
    this.displayPage.style.transitionDelay = '0s';
    this.displayPage.classList.remove('fadeIn');
    this.displayPage.classList.add('fade');
  }

  fadeInListPage() {
    this.container.classList.remove('fade');
    this.container.style.transitionDelay = '0.8s';
    this.container.classList.add('fadeIn');
  }
}

module.exports = ListButtonView;
