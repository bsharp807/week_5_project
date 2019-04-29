const NPC = require('./models/npc.js');
const Table = require('./models/table.js');
const RandomGeneration = require('./models/random_generation.js');

const NpcDisplayView = require('./views/npc_display_view.js');
const GenerateButtonView = require('./views/generate_button_view.js');
const GenerateFormView = require('./views/generate_form_view.js');
const RandomButtonView = require('./views/random_button_view.js')

document.addEventListener('DOMContentLoaded', () => {
  console.log('js has loaded');

  const npc = new NPC();
  const table = new Table();
  const randomGeneration = new RandomGeneration();

  const npcDisplayView = new NpcDisplayView();
  const generateButtonView = new GenerateButtonView();
  const generateFormView = new GenerateFormView();
  const randomButtonView = new RandomButtonView();

  npcDisplayView.bindEvents();

  generateButtonView.bindEvents();

  randomButtonView.bindEvents(randomGeneration);
  randomGeneration.receiveTableData();

  generateFormView.bindEvents(randomGeneration);

  npc.getInitialDisplay();
  table.getTableData();

});
