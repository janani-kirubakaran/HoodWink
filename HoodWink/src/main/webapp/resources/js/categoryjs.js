		var myApp = angular.module("myApp", []);
		myApp.controller("categoryCtrl", [ '$scope', '$http',
			function($scope, $http) {
				$http({
					method : 'GET',
					url : 'listCategory'
				}).success(function(cdata, status, headers, config) {
					$scope.categories = cdata;alert(cdata);
				}).error(function(cdata, status, headers, config) {
					alert( "failure");
				});
		} ])
		
		
		
		

			
		