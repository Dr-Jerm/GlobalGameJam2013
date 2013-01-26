var express = require('express')
  , app = express()
  , server = require('http').createServer(app)
  , io = require('socket.io').listen(server);

server.listen(8080);

app.use(express.static(__dirname + '/public'));


io.sockets.on('connection', function (socket) {

  var IP = socket.handshake.address.address;

  console.log('Client connected: '+ IP);
});