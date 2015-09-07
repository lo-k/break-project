$(function() {
  // ************************************************************************************
  //                          Home Page
  // Click "Find Your List" > 
  // adds "display:none to the button"
  // removes "display: none" from modal box; opens modal with user name and password

  $('.open-login-button').on('click', function() {
    $(this).addClass('hide');
    $('.modalcontainer').removeClass('hide');
  });

  // loading icon

  // Wait for window load
  // $(window).load(function() {
  //   // Animate loader off screen
  //   $('.spinner').fadeOut('slow');
  //   $('.loading-screen').fadeOut('slow');
  // });

})
