# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.sound = false

$(document).ready(->
  $(".sound-icon, .sound-icon2").click(->
    if window.sound == false
      $('.sound-icon img').attr('src', '/assets/whitesoundicon.png')
      $('.sound-icon2 img').attr('src', '/assets/whitesoundicon.png')

    else
      $('.sound-icon img').attr('src', '/assets/nosoundicon.png')
      $('.sound-icon2 img').attr('src', '/assets/nosoundicon.png')

    window.sound = !window.sound)

  $('.globe').click(->
    if($('.gif-container').is(':visible'))
       $('.gif-container').slideUp(800)
    else
       $('.gif-container').slideDown(800))
  )

$(document).ready(->
  $('.random-name').text(Faker.Name.findName())
)