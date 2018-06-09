 

function qandl() {
	console.log("Red");
	$("#qalContainer").removeClass("divhidder");
	$("#whContainer").addClass("divhidder");
	$("#reviewContainer").addClass("divhidder");
	$("#qandl").addClass("btn-glow");
	// buttons
	$("#qandl").addClass("btn-glow");
	$("#whbtn").removeClass("btn-glow");
	$("#rbtn").removeClass("btn-glow");
}


function Whistory() {
	console.log("Red");
	$("#whContainer").removeClass("divhidder");
	$("#reviewContainer").addClass("divhidder");
	$("#qalContainer").addClass("divhidder");
	// buttons
	$("#whbtn").addClass("btn-glow");
	$("#qandl").removeClass("btn-glow");
	$("#rbtn").removeClass("btn-glow");
}



function reviews() {
	console.log("Red");
	$("#reviewContainer").removeClass("divhidder");
	$("#qalContainer").addClass("divhidder");
	$("#whContainer").addClass("divhidder");

	$("#qandl").addClass("btn-glow");
	// buttons
	$("#qandl").removeClass("btn-glow");
	$("#whbtn").removeClass("btn-glow");
	$("#rbtn").addClass("btn-glow");
}


function toogleDivClass() {
	$("#newQualification").toggleClass("divhidder");
}


function toogleLicenceClass() {
	$("#newLicence").toggleClass("divhidder");
}

