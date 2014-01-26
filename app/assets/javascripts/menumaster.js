
$(document).on('ready page:change', function(){
	// menu widget in jQuery-ui
	//VERTICAL MENU
$(function() {
	$('#main-menu').smartmenus();
    $("#menuDefault").menu();
    $("#menuIcons").menu();
  });

  // HORIZONTAL MENU - have to play around with CSS and positions
// $(function() {
//     $("#menuDefault").menu(
//                              // {position:{my: "center bottom"}}
//                              {position:{my: "left top", at: "right-5 top+25" }}
//                              );
//     // $("#menuIcons").menu();
//   });


 })
