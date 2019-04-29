const NPC = require('./models/npc.js');
const Table = require('./models/table.js');
const RandomGeneration = require('./models/random_generation.js');
const List = require('./models/list.js');

const NpcDisplayView = require('./views/npc_display_view.js');
const GenerateButtonView = require('./views/generate_button_view.js');
const GenerateFormView = require('./views/generate_form_view.js');
const RandomButtonView = require('./views/random_button_view.js');
const ListView = require('./views/list_view.js');
const ListButtonView = require('./views/list_button_view.js');

document.addEventListener('DOMContentLoaded', () => {
  console.log('js has loaded');

  const npc = new NPC();
  const table = new Table();
  const randomGeneration = new RandomGeneration();
  const list = new List();

  const npcDisplayView = new NpcDisplayView();
  const generateButtonView = new GenerateButtonView();
  const generateFormView = new GenerateFormView();
  const randomButtonView = new RandomButtonView();
  const listView = new ListView();
  const listButtonView = new ListButtonView();

  npcDisplayView.bindEvents();

  listView.bindEvents();

  listButtonView.bindEvents();

  generateButtonView.bindEvents();

  randomGeneration.receiveTableData();

  randomButtonView.bindEvents(randomGeneration);

  generateFormView.bindEvents(randomGeneration);
  generateFormView.firstNameRNGButton(randomGeneration);
  generateFormView.lastNameRNGButton(randomGeneration);
  generateFormView.ageRNGButton(randomGeneration);
  generateFormView.raceRNGButton(randomGeneration);
  generateFormView.jobRNGButton(randomGeneration);

  npc.getInitialDisplay();
  table.getTableData();
  list.getListData();
});
