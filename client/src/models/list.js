const PubSub = require('../helpers/pub_sub.js');
const RequestHelper = require('../helpers/request_helper.js');

class List {

  constructor() {

    this.data = null;

  }

  bindEvents() {
    PubSub.subscribe('ListButtonView:list-button-clicked', () => {
      this.getListData();
    })
  }

  getListData() {
    const url = `http://localhost:3000/npc/`
    const request = new RequestHelper(url);
    request.get()
      .then((data) => {
        this.data = data;
        PubSub.publish('List:list-data-ready', this.data);
      })
  }
}

module.exports = List;
