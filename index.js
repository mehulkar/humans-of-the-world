var Hapi = require('hapi')
var fetcher = require('./lib/fetcher');

var PORT = process.env.PORT || 8080
var server = new Hapi.Server(PORT)

server.route({
  method : "GET",
  path: '/',
  handler: {
    file: 'templates/index.html'
  }
});

server.route({
  method: 'GET',
  path: '/posts.json',
  handler: function(req, reply) {
    var postsStream = fetcher.getPosts();
    reply(postsStream);
  }
});

server.route({
  path: "/assets/{path*}",
  method: "GET",
  handler: {
    directory: {
      path: "./public",
      listing: false,
      index: false
    }
  }
});

server.start()
console.log("Example.com website on http://localhost:%s", PORT)