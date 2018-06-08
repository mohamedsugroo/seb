// $(document).on('turbolinks:load', function() {

	console.log("Nav fixed");



	
	$('#new_register_enter').click( function(){
		console.log("Clicked To Register");
		$(".new_register").removeClass("hidden");
	});

	$('#new_register_exit').click( function(){
		console.log("Clicked To Register");
		$(".new_register").addClass("hidden");

	});

// });