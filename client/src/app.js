const NPC = require('./models/npc.js');

document.addEventListener('DOMContentLoaded', () => {
  console.log('js has loaded');

  const npc = new NPC();

  npc.getInitialDisplay();

});
