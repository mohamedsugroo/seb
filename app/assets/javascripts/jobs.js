$(document).on('turbolinks:load', function() {

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


		


		$( "#job_job_sector" ).change(function() {
			var valv = $('#job_job_sector').val();
			console.log(valv);
			$('.job_job_sector_show').html(valv)

		});



		$( "#job_hourly_rate" ).change(function() {
			var valv = $('#job_hourly_rate').val();
			console.log(valv);

			if ( valv > -1 ) {
				$('.hourly_rate_prev').html("£" + valv)
			} else {
				$('.hourly_rate_prev').html("N/A")
			}

			cost();

		});



		$( "#job_number_of_hours" ).change(function() {
			var valv = $('#job_number_of_hours').val();
			console.log(valv);
			

			if ( valv > -1 ) {
				$('.number_of_hours_prev').html(valv + "Hrs")
			} else {
				$('.number_of_hours_prev').html("N/A")
			}

			cost();

		});



		function cost() {
			var first_value = $('#job_hourly_rate').val();
			var second_value = $('#job_number_of_hours').val();

			var cost = first_value * second_value;

			$('.job_cost_prev').html("£" + cost.toFixed(2));
			console.log("cost = " + cost.toFixed(2))


		}
		


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

});
