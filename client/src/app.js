const NPC = require('./models/npc.js');
const Table = require('./models/table.js');
const RandomGeneration = require('./models/random_generation.js');
const List = require('./models/list.js');

const NpcDisplayView = require('./views/npc_display_view.js');
const GenerateButtonView = require('./views/generate_button_view.js');
const UpdateButtonView = require('./views/update_button_view.js');
const GenerateFormView = require('./views/generate_form_view.js');
const UpdateFormView = require('./views/update_form_view.js');
const RandomButtonView = require('./views/random_button_view.js');
const ListView = require('./views/list_view.js');
const ListButtonView = require('./views/list_button_view.js');
const DeleteView = require('./views/delete_view.js');

document.addEventListener('DOMContentLoaded', () => {
  console.log('js has loaded');

  const npc = new NPC();
  const table = new Table();
  const randomGeneration = new RandomGeneration();
  const list = new List();

  const npcDisplayView = new NpcDisplayView();
  const generateButtonView = new GenerateButtonView();
  const updateButtonView = new UpdateButtonView();
  const generateFormView = new GenerateFormView();
  const updateFormView = new UpdateFormView();
  const randomButtonView = new RandomButtonView();
  const listView = new ListView();
  const listButtonView = new ListButtonView();
  const deleteView = new DeleteView();

  npcDisplayView.bindEvents();

  npc.listIdListener();

  listView.bindEvents();

  listButtonView.bindEvents();

  list.bindEvents();

  generateButtonView.bindEvents();

  updateButtonView.updateButtonListener();
  updateButtonView.bindEvents();

  randomGeneration.receiveTableData();

  deleteView.deleteListen();
  deleteView.bindEvents();
  deleteView.cancelConfirm();

  randomButtonView.bindEvents(randomGeneration);

  generateFormView.bindEvents(randomGeneration);
  generateFormView.firstNameRNGButton(randomGeneration);
  generateFormView.lastNameRNGButton(randomGeneration);
  generateFormView.ageRNGButton(randomGeneration);
  generateFormView.raceRNGButton(randomGeneration);
  generateFormView.jobRNGButton(randomGeneration);
  generateFormView.cancelButton();

  updateFormView.updateListen();

  updateFormView.bindEvents(randomGeneration);
  updateFormView.firstNameRNGButton(randomGeneration);
  updateFormView.lastNameRNGButton(randomGeneration);
  updateFormView.ageRNGButton(randomGeneration);
  updateFormView.raceRNGButton(randomGeneration);
  updateFormView.jobRNGButton(randomGeneration);
  updateFormView.cancelButton();
  updateFormView.deleteButton();

  npc.getInitialDisplay();
  table.getTableData();
});
