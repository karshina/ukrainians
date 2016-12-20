$(document).ready(function($) {
	var $window = $(window)
	var $play = $('body .play')
	var $video = $('body .video')
	var $close = $('body .close')
	var $lang = $('body .lang')
	var $intro = $('body .intro')
	var $footer = $('body .footer')
  var $icon = $('body .icon')
  var $strokebg = $('body .stroke-bg')
	var player = {}

  var tag = document.createElement('script');

  tag.src = 'https://www.youtube.com/iframe_api';
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

  var stroke = document.querySelector('.stroke');
  var length = stroke.getTotalLength();

  stroke.style.strokeDasharray = length;
  stroke.style.strokeDashoffset = length;

  var animationDiv = document.querySelector('.stroke');
  animationDiv.style.webkitAnimationPlayState = 'running';

  $strokebg.css('stroke', '#4c4c4c');
  setTimeout(function(){
    $strokebg.css('stroke', 'white');
  }, 12200);

  // function retinaSrc(src) {
  //   if (window.Retina.isRetina()) {
  //     src = src.replace('.jpg', '@2x.jpg');
  //   }
  //   return src;
  // }

  function onReady() {
    $window.resize(function() {
      if (!player.h) return;
      player.h.h.width = $window.width();
      player.h.h.height = $window.height();
    })

    $icon.on('click', function () {
      $video.removeClass('none');
      $icon.addClass('none');
      $lang.addClass('none');
      $intro.addClass('none');
      $footer.addClass('none');
      $close.removeClass('none');
      player.playVideo();
    })

    $close.on('click', function () {
      $video.addClass('none');
      $icon.removeClass('none');
      $lang.removeClass('none');
      $intro.removeClass('none');
      $footer.removeClass('none');
      $close.addClass('none');
      player.stopVideo();
      player.clearVideo();
    })
  }

  window.onYouTubeIframeAPIReady = function() {
    player = new YT.Player('player', {
      height: '100%',
      width: '100%',
      videoId: 'Fftqr09RQ1w',
      events: {
        'onReady': onReady
      }
    });
  }
});
