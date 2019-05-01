class GenerateButtonView {

  constructor() {

    this.button = document.querySelector('#generate-button');
    this.generate = document.querySelector('#hidden-generate');
    this.background = document.querySelector('#catch-all');


  }

  bindEvents() {
    this.button.addEventListener('click', () => {
      this.fadeOutBackground();
      this.fadeInGenerateForm();
    })
  }

  fadeOutBackground() {
    this.background.style.transitionDelay = '0s';
    this.background.classList.remove('fadeIn');
    this.background.classList.add('fade');
  }

  fadeInGenerateForm() {
    this.generate.style.transitionDelay = '0.8s';
    this.generate.classList.remove('fade');
    this.generate.classList.add('fadeIn');
  }
}

module.exports = GenerateButtonView;
