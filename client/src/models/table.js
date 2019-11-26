const PubSub = require('../helpers/pub_sub.js');
const RequestHelper = require('../helpers/request_helper.js');

class Table {

  constructor() {

    this.data = null;

  }

  getTableData() {
    const url = `${process.env.BACK_END_URL}${process.env.BACK_END_PORT}/output/`;
    const request = new RequestHelper(url);
    request.get()
      .then((output) => {
        this.data = output;
        PubSub.publish('Table:table-data-ready', this.data);
      })
  }
}

module.exports = Table;
