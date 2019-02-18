$(document).on('turbolinks:load', function() {
	$('.nav-link').click(function(){
	  $('.container').animate({
	  	opacity:0
	  },5000);
	});
});