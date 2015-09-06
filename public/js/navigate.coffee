showSlide = ->
  current_slide = window.slides[window.current]
  current_slide.steps = $(current_slide).find('.step')
  current_slide.current_step = 0
  showSteps()

  $('slide').removeClass('active')
  $(current_slide).addClass('active')


showSteps = ->
  current_slide = window.slides[window.current]
  step = current_slide.current_step
  $(current_slide.steps).removeClass('active')
  while step > 0
    step -= 1
    $(current_slide.steps[step]).addClass('active')

nextSlide = ->
  window.current += 1 unless window.slides.length - 1 == window.current
  showSlide()

previousSlide = ->
  window.current -= 1 unless window.current == 0
  showSlide()

nextStep = ->
  current_slide = window.slides[window.current]
  current_slide.current_step += 1 unless current_slide.current_step == current_slide.steps.length
  showSteps()

previousStep = ->
  current_slide = window.slides[window.current]
  current_slide.current_step -= 1 unless current_slide.current_step == 0
  showSteps()
