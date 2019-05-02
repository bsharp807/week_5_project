class UpdateButtonView {

  constructor() {

    this.button = document.querySelector('#update-button');
    this.generate = document.querySelector('#hidden-update');
    this.background = document.querySelector('#catch-all');


  }

  bindEvents() {
    this.button.addEventListener('click', () => {
      this.fadeOutBackground();
      this.fadeInUpdateForm();
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
}

module.exports = UpdateButtonView;
