class GenerateButtonView {

  constructor() {

    this.element = document.querySelector('#generate-button');
    this.hidden = document.querySelector('#hidden-generate');

  }

  bindEvents() {
    this.element.addEventListener('click', () => {
      this.hidden.style.visibility = 'visible';
    })
  }

}

module.exports = GenerateButtonView;
