app.controller("restclient", function($scope, $http) {
	var url = 'http://localhost:9000/greeting';
	$http.get(url).success(function(response) {
		console.log('response ::==' + response);
		$scope.msg = response;
	});
});
app.controller("userFormCtrl", function($scope, $http, $location, $window) {	
	$scope.formData = {};
	var user_id = $location.search().id;
	/*
	 * 
	 */
	/*console.log('$location.search.id ::==' + $location.search().id);
	console.log('$location.absUrl() ::==' + $location.absUrl());
	console.log('$location.host() ::==' + $location.host());
	console.log('$location.port() ::==' + $location.port());
	console.log('$location.search() ::==' + $location.search());
	console.log($location.search());
	console.log('$location.path() ::==' + $location.path());
	console.log('$location.hash() ::==' + $location.hash());	*/
	/*
	 * Edit Data
	 */
	console.log('user_id ::=='+user_id);
	if (user_id != undefined) {
		$http.get('http://localhost:9000/user/getUser/' + user_id).success(function(response) {
			console.log('response ::==' + response);
			$scope.formData = response;
		});
	}
	/*
	 * 
	 */

	$scope.processForm = function() {
		console.log('$scope.formData ::==' + $scope.formData);
		var url = 'http://localhost:9000/user/save';
		$http({
			url : url,
			method : 'POST',
			dataType : 'JSON',
			data : $.param($scope.formData),
			headers : {
				'Content-Type' : 'application/x-www-form-urlencoded'
			}
		}).success(function(data) {
			console.log(data);
			$window.location = 'http://localhost:8080/Poolsawat/userList';
		});
	}
});
app.controller("userListCtrl", [ '$scope', '$http', '$window', function($scope, $http, $window) {
	var url = 'http://localhost:9000/user/';
	$http.get(url).success(function(response) {
		console.log('response ::==' + response);
		$scope.users = response;
	});
	$scope.btnDelete = function(userId) {
		$http({
			method : "GET",
			dataType : 'JSON',
			url : "http://localhost:9000/user/delete",
			params : {
				id : userId
			}
		}).success(function(data) {
			console.log(data);
			$window.location = 'http://localhost:8080/Poolsawat/userList';
		});
	}
} ]);