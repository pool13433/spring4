app.factory('MathService', function() {
	var factory = {};
	factory.multiply = function(a, b) {
		return a * b
	}
	return factory;
});
app.directive('ngConfirmClick', [ function(){
    return {
        priority: -1,
        restrict: 'A',
        link: function(scope, element, attrs){
          element.bind('click', function(e){
            var message = attrs.ngConfirmClick;
            if(message && !confirm(message)){
              e.stopImmediatePropagation();
              e.preventDefault();
            }
          });
        }
      } 
}]);