var url = document.URL+".json"

console.log("Angular Activated", url);


angular.module('sebkiApp', [])
.controller('jobsController', function($scope, $http) {
	console.log("Jobs");

	$http.get(url).
	then(function(response) {
		$scope.jobsList = response.data.jobs;
		console.log(response.data.jobs);
	});
})