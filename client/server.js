const express = require('express');
const app = express();

const port = 23456

app.use(express.static('public'));

app.get('/', (req, res) => res.sendFile('index.html'));

app.listen(port, () => console.log(`NPC app listening on port ${port}!`));
