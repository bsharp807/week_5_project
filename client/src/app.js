const NPC = require('./models/npc.js');
const Table = require('./models/table.js');

const NpcDisplayView = require('./views/npc_display_view.js');
const GenerateButtonView = require('./views/generate_button_view.js');
const GenerateFormView = require('./views/generate_form_view.js');
const RandomButtonView = require('./views/random_button_view.js')

document.addEventListener('DOMContentLoaded', () => {
  console.log('js has loaded');

  const npc = new NPC();
  const table = new Table();

  const npcDisplayView = new NpcDisplayView();
  const generateButtonView = new GenerateButtonView();
  const generateFormView = new GenerateFormView();
  const randomButtonView = new RandomButtonView();

  npcDisplayView.bindEvents();

  generateButtonView.bindEvents();

  randomButtonView.receiveTableData();
  randomButtonView.bindEvents();

  generateFormView.receiveTableData();
  generateFormView.bindEvents();

  npc.getInitialDisplay();
  table.getTableData();

});
