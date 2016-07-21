var pApp = angular.module("pApp", []);
		pApp.controller("productCtrl",[ '$scope', '$http',
			function($scope,$http) {
				$http({
					method : 'GET',
					url : 'listProduct'
				}).success(function(pdata, status, headers, config) {
					$scope.products = pdata; alert(pdata);
				}).error(function(pdata, status, headers, config) {
					alert( "failure");
				});
		} ])