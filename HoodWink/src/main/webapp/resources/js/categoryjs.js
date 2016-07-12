		var myApp = angular.module("myApp", []);
		myApp.controller("categoryCtrl", [ '$scope', '$http',
			function($scope, $http) {
				$http({
					method : 'GET',
					url : 'listCategory'
				}).success(function(data, status, headers, config) {
					$scope.categories = data;
				}).error(function(data, status, headers, config) {
					alert( "failure");
				});
		} ])
		
		
		
		

			
		