
function jobsCat() {
	console.log("Jobs to category");
	$(".job_info_create").addClass("hidde-input");
	$(".jobs_hours_and_payment ").removeClass("hidde-input");

}



function jobsCatTwo() {
	console.log("Jobs to category");
	$(".jobs_category").removeClass("hidde-input");
	$(".jobs_hours_and_payment ").addClass("hidde-input");

}


function jobsCatThree() {
	console.log("Jobs to category");
	$(".jobs_category").addClass("hidde-input");
	$(".jobs_description ").removeClass("hidde-input");

}