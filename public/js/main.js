$(document).ready(function($) {
	var $window = $(window)
	var $play = $('.play')
	var $video = $('.video')
	var $close = $('.close')
	var $lang = $('.lang')
	var $intro = $('.intro')
	var $footer = $('.footer')
	var player = {}

  var tag = document.createElement('script');

  tag.src = "https://www.youtube.com/iframe_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

  var stroke = document.querySelector('.stroke');
  var length = stroke.getTotalLength();

  console.log(length);

  stroke.style.strokeDasharray = length;
  stroke.style.strokeDashoffset = length;

  var animationDiv = document.querySelector('.stroke');

  animationDiv.style.webkitAnimationPlayState = "running";

function retinaSrc(src) {
    if (window.Retina.isRetina()) {
      src = src.replace('.jpg', '@2x.jpg');
    }
    return src;
  }

$window.resize(function() {
    if (!player.h) return;
    player.h.h.width = $window.width();
    player.h.h.height = $window.height();
})

$play.on('click', function () {
  $video.removeClass('none');
  $play.addClass('none');
  $lang.addClass('none');
  $intro.addClass('none');
  $footer.addClass('none');
  $close.removeClass('none');
  onYouTubeIframeAPIReady();
})

$close.on('click', function () {
  location.reload()
  // $video.addClass('none');
  // $play.removeClass('none');
  // $lang.removeClass('none');
  // $footer.removeClass('none');
  // $intro.removeClass('none');
  // $close.addClass('none');
  // player.stopVideo();
  // player.clearVideo();
})


function onYouTubeIframeAPIReady () {
  player = new YT.Player('player', {
    height: '100%',
    width: '100%',
    videoId: 'Fftqr09RQ1w',
    events: {
      'onReady': function(event) {
          event.target.playVideo()
        }
    }
  });
}

})