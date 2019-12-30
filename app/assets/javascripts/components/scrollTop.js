$(document).on('ready turbolinks:load', function() {
  var $scrollTop = $('.js-scroll-top');

  $(window).scroll(function() {
    if ($(window).scrollTop() > 250) {
      $scrollTop.addClass('show');
    } else {
      $scrollTop.removeClass('show');
    }
  });

  $scrollTop.on('click', function(e) {
    e.preventDefault();
    $('html, body').animate({scrollTop:0}, '300');
  });
});