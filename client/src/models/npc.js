const PubSub = require('../helpers/pub_sub.js');
const RequestHelper = require('../helpers/request_helper.js');

class NPC {

  constructor() {

    this.data = null;

  }

  getInitialDisplay () {
    const url = 'http://localhost:3000/npc/1';
    const request = new RequestHelper(url);
    request.get()
      .then((data) => {
        this.data = data;
        PubSub.publish('NPC:initial-data-ready');
      })
  }

}

module.exports = NPC;
