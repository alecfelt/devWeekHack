// server.js

// defining constants
const express = require('express');
const bodyParser = require('body-parser')
const app = express();

// applying bodyparser middleware to express
app.use(bodyParser.urlencoded({extended: true}))

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
  var a = req.body.name
  console.log(a)
  res.send('You just posted')
})
