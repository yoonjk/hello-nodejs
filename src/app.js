const express = require("express");
const app = express();
const dotenv = require('dotenv');
dotenv.config();
const port = process.env.PORT || 8080
const msg = process.env.APP_MSG || 'default message...'
console.log('port:'+port);

app.get('/', (req, res) => {
	  res.send(`hello World! version 1, received:${msg}`);
})

app.get('/healthz', (req, res) => {
	res.send('Check healthz');
})



app.listen(port, () => {
	  console.log(`Welcome app listening on port ${port}`);
})
