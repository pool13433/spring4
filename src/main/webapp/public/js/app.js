var app = angular.module("poolsawatApp", [ 'ngRoute' ]).config(
		[ '$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
			/*
			 * $routeProvider.when('/customers/:customerId', { templateUrl :
			 * 'partials/customer.html', controller : CustomerCtrl
			 * }).otherwise({ redirectTo : '/' });
			 */
			//$locationProvider.html5Mode(true).hashPrefix('!');
		} ]);
/*
 * app.config([ '$httpProvider', function($httpProvider) {
 * $httpProvider.defaults.useXDomain = true; delete
 * $httpProvider.defaults.headers.common['X-Requested-With']; } ]);
 */
