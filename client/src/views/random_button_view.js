const NPC = require('../models/npc.js');
const RNG = require('../models/rng.js');
const PubSub = require('../helpers/pub_sub.js');

class randomButtonView {

  constructor() {

    this.element = doucment.querySelector('#random-button');
    this.data = null;

  }

  receiveTableData() {
    PubSub.subscribe('Table:table-data-ready', (evt) => {
      this.data = evt.detail;
    })
  }


}
