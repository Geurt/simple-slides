$(document).keydown (e)->
  switch e.which
    when 37 then keyLeft()
    when 39 then keyRight()
    when 38 then keyUp()
    when 40 then keyDown()
    when 13 then keyEnter()
    when 70 then keyF()
  e.preventDefault()

keyLeft = ->
  previousSlide()

keyRight = ->
  nextSlide()

keyUp = ->
  previousStep()

keyDown = ->
  nextStep()

keyF = ->
  fullScreen()

keyEnter = ->
  fullScreen()
