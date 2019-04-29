const PubSub = require('../helpers/pub_sub.js');
const RequestHelper = require('../helpers/request_helper.js');

class NPC {

  constructor() {

    this.data = null;
    this.id = 1;

  }

  getInitialDisplay () {
    const url = `http://localhost:3000/npc/${this.id}`;
    const request = new RequestHelper(url);
    request.get()
      .then((data) => {
        this.data = data;
        PubSub.publish('NPC:initial-data-ready', this.data[0]);
      })
  }

}

module.exports = NPC;
