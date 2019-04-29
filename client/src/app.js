const NPC = require('./models/npc.js');
const NpcDisplayView = require('./views/npc_display_view.js');
const GenerateButtonView = require('./views/generate_button_view.js');

document.addEventListener('DOMContentLoaded', () => {
  console.log('js has loaded');

  const npc = new NPC();
  const npcDisplayView = new NpcDisplayView();
  const generateButtonView = new GenerateButtonView();

  npcDisplayView.bindEvents();

  generateButtonView.bindEvents();

  npc.getInitialDisplay();

});
