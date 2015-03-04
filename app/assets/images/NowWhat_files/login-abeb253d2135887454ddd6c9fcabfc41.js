// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var login_ready = function() {
	// $("#my_modal").hide();

	// $("#myLogin").on("click", function(event){
	// 	event.preventDefault();
	// 	$("#my_modal").addAttr()
	// 	$("#my_modal").show();
	// });

	$("#close").on("click", function(event){
		$("#my_modal").hide();
	});



};

$(document).ready(login_ready);
$(document).on('page:load', login_ready);
