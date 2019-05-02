const NPC = require('../models/npc.js');
const PubSub = require('../helpers/pub_sub.js');

class DeleteView {

  constructor() {

    this.hiddenDelete = document.querySelector('#hidden-delete');
    this.form = document.querySelector('#delete-form');
    this.cancel = document.querySelector('#cancel-buttonDel');

    this.background = document.querySelector('#catch-all');
    this.hidden = document.querySelector('#hidden-update');

    this.npc = null;

  }

  deleteListen() {
    PubSub.subscribe('UpdateFormView:data-for-delete', (evt) => {
      this.npc = evt.detail;
      console.log(this.npc);
    })
  }

  bindEvents() {
    this.form.addEventListener('submit', () => {
      const npc = new NPC();
      this.updateStyle();
      npc.deleteData(this.npc);
    })
  }

  cancelConfirm() {
    this.cancel.addEventListener('click', () => {
      this.updateStyle();
    })
  }

  updateStyle() {
    this.hideConfirm();
    this.fadeUpdate();
    this.fadeInBackground();
  }

  hideConfirm() {
    this.hiddenDelete.classList.remove('show');
    this.hiddenDelete.classList.add('hide');
  }

  fadeUpdate() {
    this.hidden.style.transitionDelay = '0s';
    this.hidden.classList.remove('fadeIn');
    this.hidden.classList.add('fade');
  }

  fadeInBackground(){
    this.background.style.transitionDelay = '0.8s';
    this.background.classList.remove('fade');
    this.background.classList.add('fadeIn');
  }
}

module.exports = DeleteView;
