$(function() {

  $('.countdownstart').on('click', function() {
    $('.countdowndisplay').css('visibility','visible');
  });

  $('.countdownstop').on('click', function() {
    $('.countdowndisplay').css('visibility','hidden');
  });

});