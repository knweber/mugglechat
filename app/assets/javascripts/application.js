// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//= require random_giphy_image_rails
$(document).ready(function(){
  // Set debug mode (for console logs)
  RandomGiphyImageRails.debug = true;

  // Testing api key by default if you don't specify one
  RandomGiphyImageRails.data.api_key = 'd0e4ea9c95ad41bfa293f8e951a1beb7'
;

  // Class of the HTML element where you want to put the gif
  RandomGiphyImageRails.data.element_class = 'giphyme';

  // Query or tag of your random gif
  RandomGiphyImageRails.data.query = 'harrypotter';

  // Executes the random gif thing
  RandomGiphyImageRails.giphyme();
});
