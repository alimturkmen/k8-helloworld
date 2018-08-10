var http = require('http');

var handleRequest = function(request, response) {
  console.log('Received request for URL: ' + request.url);
  response.writeHead(200);
  response.end('Panta chōrei kai ouden menei kai dis es ton auton potamon ouk an embaies \n Everything changes and nothing remains still ... and ... you cannot step twice into the same stream')
};
var www = http.createServer(handleRequest);
www.listen(8005);
