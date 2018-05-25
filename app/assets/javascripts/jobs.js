
$("select").addClass("custom-select");


if ( document.querySelector('.jobForm') !== null ){
	console.log("Form Active");
	$("select").addClass("form-control-lg");


	var jic,jhap,jc,jdesc,btnJic,btnJhap,btnJc;

	// div's
	jic = document.querySelector('.job_info_create');
	jhap = document.querySelector('.jobs_hours_and_payment');
	jc = document.querySelector('.jobs_category');
	jdesc = document.querySelector('.jobs_description');

	// button's

	btnJic = document.querySelector('.jic');
	btnJhap = document.querySelector('.jhap');
	btnJc = document.querySelector('.jc');


	// event's

	btnJic.addEventListener('click', TandS, false);
	btnJhap.addEventListener('click', HandP, false);
	btnJc.addEventListener('click', jobsCat, false);


	// function's



	// show inputs

	$( "#job_title" ).change(function() {
		var valv = $('#job_title').val();
		console.log(valv);
		$('.job_title').html(valv)

	});

	$( "#job_payment_method" ).change(function() {
		var valv = $('#job_payment_method').val();
		console.log(valv);
		$('.payment_method').html(valv)

	});


	$( "#job_payment_date" ).change(function() {
		var valv = $('#job_payment_date').val();
		console.log(valv);
		$('.payment_date').html(valv)

	});


	


	// job_info_create


	function TandS() {
		$(".job_info_create").addClass("hidde-input");
		$(".jobs_hours_and_payment").removeClass("hidde-input");
		$(".hp").addClass("fm-done");
		
	}


	// jobs_hours_and_payment
	

	function HandP() {
		$(".jobs_hours_and_payment").addClass("hidde-input");
		$(".jobs_category").removeClass("hidde-input");

		$(".cat").addClass("fm-done");
	}

	// jobs_category

	function jobsCat() {
		$(".jobs_category").addClass("hidde-input");
		$(".jobs_description").removeClass("hidde-input");
		$(".desc").addClass("fm-done");

	}


	// jobs_description

	function description() {

	}

};
