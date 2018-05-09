$(document).on('turbolinks:load', function() {



// contractor

	// initialize variables

	var firstButton, secondBtn, secBtn;

	

	


	// first button #contine_to_address
	// first div #contractor_address
	// hidde the first div
	// show second div

if ( document.querySelector('.pageRegisterone') !== null ){


	firstButton= document.getElementById("contine_to_address");
	firstButton.addEventListener('click', babysteps, false);

	secondBtn= document.getElementById("contine_to_complete");
	secondBtn.addEventListener('click', secondButton, false);

	function babysteps() {
		$('.contractor_address').removeClass('hidden')
		$('.personal_info').addClass('hidden')

	};


	// last button #contine_to_complete
	// last div 
	// hidde the first and second div 
	// show the last div

	function secondButton() {
		$('.complete_sign_in_info').removeClass('hidden')
		$('.contractor_address').addClass('hidden')

	};


}




if ( document.querySelector('.pageRegistertwo') !== null ){

// companies

	secBtn = document.getElementById("second_page_company");
	secBtn.addEventListener('click', secondPageCompany, false);

	

	function secondPageCompany() {
		$('.page_two_company').removeClass('hidden')
		$('.page_one_company').addClass('hidden')
	};

}




});
