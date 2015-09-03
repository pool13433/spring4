app.service('CalcService', function(MathService) {
	this.square = function(a) {
		return MathService.multiply(a, a);
	}
});
app.controller("angualrJsEventsCtrl", function($scope, CalcService,defaultInput) {
	$scope.reset = function() {
		$scope.firstName = "Mahesh";
		$scope.lastName = "Parashar";
		$scope.email = "MaheshParashar@tutorialspoint.com";
	}
	$scope.math = function() {
		console.log('defaultInput ::=='+defaultInput);
		$scope.result = CalcService.square($scope.number);
	}

});
app.controller('angualrJsValidateCtrl', function($scope) {
	$scope.reset = function() {
		$scope.firstName = "Mahesh";
		$scope.lastName = "Parashar";
		$scope.email = "MaheshParashar@tutorialspoint.com";
	}
});