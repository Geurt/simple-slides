$(document).keydown (e)->
  switch e.which
    when 37 then keyLeft(e)
    when 39 then keyRight(e)
    when 38 then keyUp(e)
    when 40 then keyDown(e)
    when 13 then keyEnter()
    when 70 then keyF(e)
    when 76 then keyL(e)

keyLeft = (e)->
  previousSlide()
  e.preventDefault()

keyRight = (e)->
  nextSlide()
  e.preventDefault()

keyUp = (e)->
  previousStep()
  e.preventDefault()

keyDown = (e)->
  nextStep()
  e.preventDefault()

keyF = (e)->
  fullScreen()
  e.preventDefault()

keyL = (e)->
  lower()
  e.preventDefault()

keyEnter = ->
  fullScreen()
