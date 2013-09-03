window.sound = false;

$(document).ready(function(){
  $(".sound-icon, .sound-icon2").click(function(){
    if (window.sound === false){
      $('.sound-icon img').attr('src', '/assets/whitesoundicon.png');
      $('.sound-icon2 img').attr('src', '/assets/whitesoundicon.png');
    } else {
      $('.sound-icon img').attr('src', '/assets/nosoundicon.png');
      $('.sound-icon2 img').attr('src', '/assets/nosoundicon.png');
      }

    window.sound = !window.sound;
    });

  $('.globe').on('click', function(){
    if ($('.gif-container').is(':visible') === true) {
      $('.gif-container').slideUp(800);
    } else {
      $('.gif-container').slideDown(800);
    }
  
  });
  });

$(document).ready(function(){
  $('.random-name').text(Faker.Name.findName());
}
);


$(document).ready(function(){
  $('.twitter-share').on('click', function(){
    $('.tweet-button-modal')[0].click();});
});
  
