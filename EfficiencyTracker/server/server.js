// server.js

// defining constants
const express = require('express');
const bodyParser = require('body-parser')
const app = express();
const MongoClient = require('mongodb').MongoClient

// Connecting to mongo client
//MongoClient.connect('link-to-mongodb', (err, database) => {

//})


// applying bodyparser middleware to express
app.use(bodyParser.urlencoded({extended: true}))

// running server on port 3000
app.listen(3000, function() {
  console.log('listening on 3000')
})

// get request
app.get('/', (req, res) => {
  res.send('You just sent a GET request')
})

// post request
app.post('/', (req, res) => {
  var a = req.body.name
  console.log(a)
  res.send('You just sent a POST request')
})

app.delete('/', (req, res) => {
  res.send('you just sent a DELETE request')
})

app.put('/', (req, res) => {
  res.send('you just sent a PUT request')
})
