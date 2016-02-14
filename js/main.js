$('#play').click(function(){
$('video')[0].play();
})

function retinaSrc(src) {
    if (window.Retina.isRetina()) {
      src = src.replace('.jpg', '@2x.jpg')
    }
    return src
  }