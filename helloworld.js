var http = require('http');

var handleRequest = function(request, response) {
  console.log('Received request for URL: ' + request.url);
  response.writeHead(200);
  response.end('This is just for the sake of Kubernetes')
};
var www = http.createServer(handleRequest);
www.listen(8005);