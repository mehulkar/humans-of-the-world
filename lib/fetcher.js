var fs = require('fs');

module.exports = {
  getPosts: function() {
    return fs.createReadStream('pages.json');
  }
}