fullScreen = ->
  b = document.body
  if b.requestFullscreen
    b.requestFullscreen()
  else if b.webkitRequestFullscreen
    b.webkitRequestFullscreen()
  else if b.mozRequestFullScreen
    b.mozRequestFullScreen()
  else if b.msRequestFullscreen
    b.msRequestFullscreen()

init = ->
  window.slides = $('slides').find('slide')
  window.current = 0
  showSlide()

$(init)
