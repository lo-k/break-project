
// ************************************************************************************
//                          Home Page
// Click "Find Your List" > 
// adds "display:none to the button"
// removes "display: none" from modal box; opens modal with user name and password

$('.find-list-button').on('click', function() {
  $(this).addClass('hide');
  $('.modalcontainer').removeClass('hide');
});

// Takes the name that you enter in the Login box and puts it into the account page title?

// $('.save-button').on('click',function() {
//  $('#name').val().prepend('.your-name');
//  console.log('.your-name');
// });

// loading icon

// Wait for window load
$(window).load(function() {
  // Animate loader off screen
  $('.spinner').fadeOut('slow');
  $('.loading-screen').fadeOut('slow');
});

