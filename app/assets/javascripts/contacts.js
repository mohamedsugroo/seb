$(document).on('turbolinks:load', function() {

	var door, firstline, city;
	// door number	

	$( "#contact_door_number" ).change(function() {
		door = $("#contact_door_number").val();
		replaceandfills();
	});

	// first line address


	$( "#contact_first_line_js" ).change(function() {
		firstline = $("#contact_first_line_js").val();
		replaceandfills();
	});

	// city


	$( "#contact_city" ).change(function() {
		city = $("#contact_city").val();
		replaceandfills();
	});


	// Replace And Fill

	function replaceandfills() {
		var value_address = door + " , " + firstline + " , " + city;
		console.log( value_address );

		$("#contact_first_line").val(door + " , " + firstline + " , " + city);
	}



});