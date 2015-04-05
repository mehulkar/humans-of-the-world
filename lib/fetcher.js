var fs = require('fs');

var token = 'CAACEdEose0cBALbWhySNETZBsxVSXKFZBYsDoNjIm6xDBjJTGmO2xQKbI2zbO0Pds8Gzu9B2qVokH1J57jCcFQDZCZCnpHmJU2Ev3jVWOFSXvglCvdS2e862nR11DAZB2gZABiZAIZC4P9E9SBtbwclUVUyJqJu0L70OI7akS4MHy9KZCQL2cw7QkqMST7dOBCVgZD'

module.exports = {
  getPosts: function() {
    // get an array of clean urls
    // build graph api urls
    // fire parallel requests for url using graph api
    // when
    getPageUrls()
  }
}

function getPageUrls() {
  return fs.createReadStream('pages.json');
}