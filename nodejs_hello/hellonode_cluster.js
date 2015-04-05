var cluster = require('cluster');
var tcp = require('net');
var numCPUs = require('os').cpus().length;

if (cluster.isMaster) {
  // Fork workers.
  for (var i = 0; i < numCPUs; i++) {
    cluster.fork();
  }

  cluster.on('death', function(worker) {
    console.log('worker ' + worker.pid + ' died');
  });
} else {
  // Worker processes have a tcp server.

tcp.createServer(function(socket){
    socket.on('data', function(data){
      str = data.toString().toUpperCase();
      if (str.indexOf("HELLO") > -1) {
        socket.write("World \r\n");
        }
    });
}).listen(18000);
}