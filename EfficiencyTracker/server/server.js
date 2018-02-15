// server.js

// defining express
const express = require('express');
const app = express();

// running server on port 3000
app.listen(3000, function() {
  console.log('listening on 3000')
})

// get request
app.get('/', (req, res) => {
  res.send('You are connected')
})

// post request
app.post('/', (req, res) => {
  var a = req.body
  console.log(a)
  res.send('You just posted')
})
