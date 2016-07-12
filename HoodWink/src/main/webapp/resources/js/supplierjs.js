var sApp = angular.module("sApp", []);
		sApp.controller("supplierCtrl",[ '$scope', '$http',
			function($scope,$http) {
				$http({
					method : 'GET',
					url : 'listSupplier'
				}).success(function(sdata, status, headers, config) {
					$scope.suppliers = sdata;
				}).error(function(sdata, status, headers, config) {
					alert( "failure");
				});
		} ])