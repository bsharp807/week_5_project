const PubSub = require('../helpers/pub_sub.js');
const RequestHelper = require('../helpers/request_helper.js');

class NPC {

  constructor() {

    this.data = null;
    this.id = 1;

  }

  getInitialDisplay() {
    const url = `http://localhost:3000/npc/${this.id}`;
    const request = new RequestHelper(url);
    request.get()
      .then((data) => {
        this.data = data;
        PubSub.publish('NPC:initial-data-ready', this.data[0]);
      })
  }

  postData(npc) {
    const url = `http://localhost:3000/npc/`
    const request = new RequestHelper(url);
    request.post(npc)
      .then((data) => {
        this.data = data[data.length - 1];
        this.id = this.data.id;
        this.getInitialDisplay();
      })
  }

  putData(npc) {
    const url = `http://localhost:3000/npc/${this.id}`;
    const request = new RequestHelper(url);
    request.put()
      .then((data) => {
        this.data = data;
        PubSub.publish('NPC:initial-data-ready', this.data[0]);
      })
  }

}

module.exports = NPC;
