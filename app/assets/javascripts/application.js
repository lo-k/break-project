// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(function() {

  L.mapbox.accessToken = 'pk.eyJ1IjoibG8tayIsImEiOiI2MlRSblJNIn0.BHAPbjvKJOJErIpztHN2Lw'

  var map = L.mapbox.map('map-init', 'mapbox.streets')
    .setView([40.718217, -73.998284], 13);


// ******************************************
//               SCROLL TO TOP BUTTON
// ******************************************

  //Check to see if the window is top if not then display button
  $(window).scroll(function(){
    if ($(this).scrollTop() > 100) {
      $('.scroll-to-top').fadeIn();
    } else {
      $('.scroll-to-top').fadeOut();
    }
  });

})