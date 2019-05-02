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

  listIdListener() {
    PubSub.subscribe('ListView:id-from-card', (evt) => {
      this.id = evt.detail.id;
      this.getInitialDisplay();
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
    const url = `http://localhost:3000/npc/${npc.id}`;
    const request = new RequestHelper(url);
    request.put(npc)
      .then((data) => {
        this.data = data;
        PubSub.publish('NPC:initial-data-ready', this.data[0]);
      })
  }

  deleteData(entry) {
  const url = `http://localhost:3000/npc/${npc.id}`;
  const request = new RequestHelper(url);
  request.delete(entry)
    .then((entries) => {
      PubSub.publish('Swim-Times:DB-data-loaded', entries);
    });
}

}

module.exports = NPC;
