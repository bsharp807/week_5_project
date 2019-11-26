const express = require('express');
const app = express();

const port = process.env.FRONT_END_PORT
const backEnd = process.env.BACK_END_PORT
const url = process.env.BACK_END_URL

app.use(express.static('public'));

app.get('/', (req, res) => res.sendFile('index.html'));

app.listen(port, () => console.log(`NPC app listening on port ${port}! Backend should be port ${backEnd}. Url to post = ${url} ${process.env.BACK_END_PORT}/npc/`));
