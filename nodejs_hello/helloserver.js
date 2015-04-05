var net = require('net');
net.createServer(function(socket){
    socket.on('data', function(data){
    	str = data.toString().toUpperCase();
    	if (str.indexOf("HELLO") > -1) {
        socket.write("World \r\n");
        }
    });
}).listen(8000);