const NPC = require('./models/npc.js');
const NpcDisplayView = require('./views/npc_display_view.js');

document.addEventListener('DOMContentLoaded', () => {
  console.log('js has loaded');

  const npc = new NPC();
  const npcDisplayView = new NpcDisplayView();

  npcDisplayView.bindEvents();

  npc.getInitialDisplay();

});
