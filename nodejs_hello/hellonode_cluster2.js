var Cluster = require('cluster2'),
    net = require('net');
var server = net.createServer(function(c){
    c.on('data', function(data){
      str = data.toString().trim().toUpperCase();
      if ("HELLO" == str) {
        c.write("World \r\n");
        }
    });
});

var c = new Cluster({
    port: 13000,
    cluster: true
});