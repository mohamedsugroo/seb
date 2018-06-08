

	var door, firstline, city;
	// door number	
	if ( document.querySelector('#contact_door_number') !== null ){
		$( "#contact_door_number" ).change(function() {
			door = $("#contact_door_number").val();
			replaceandfills();
		});
	}

	// first line address


	if ( document.querySelector('#contact_first_line_js') !== null ){
		$( "#contact_first_line_js" ).change(function() {
			firstline = $("#contact_first_line_js").val();
			replaceandfills();
		});
	}

	// city

	if ( document.querySelector('#contact_city') !== null ){
		$( "#contact_city" ).change(function() {
			city = $("#contact_city").val();
			replaceandfills();
		});
	}

	// Replace And Fill

	function replaceandfills() {
		var value_address = door + " , " + firstline + " , " + city;
		console.log( value_address );

		$("#contact_first_line").val(door + " , " + firstline + " , " + city);
	}



