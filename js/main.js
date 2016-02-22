$(document).ready(function($) {
	var $window = $(window)
	var $play = $('.play')
	console.warn("HUY", $play.length)
	var $video = $('.video')
    var player = {}

$play.on('click', function () {
  $('.video').removeClass("none");
  $('iframe').playVideo();
})

function retinaSrc(src) {
    if (window.Retina.isRetina()) {
      src = src.replace('.jpg', '@2x.jpg')
    }
    return src
  }

$window.resize(function() {
    if (!player.h) return
    player.h.h.width = $window.width()
    player.h.h.height = $window.height()
})


})