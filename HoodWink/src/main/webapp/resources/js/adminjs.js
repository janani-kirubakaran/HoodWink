

    // create the module and name it scotchApp
        // also include ngRoute for all our routing needs
    var adminApp = angular.module('adminApp', ['ngRoute']);

    // configure our routes
    adminApp.config(function($routeProvider) {
        $routeProvider

            // route for the home page
            .when('/adminhome', {
                      url : 'admin',
                controller  : 'mainCtrl'
            })

            // route for the about page
            .when('/getAllCategory', {
                   url : 'getAllCategory',
                //controller  : 'categoryControl'
            })
            .when('/getAllProduct', {
                     url : 'getAllProduct',
                //controller  : 'productControl'
            })

                
            // route for the contact page
            .when('/getAllSupplier', {
                  url : 'getAllSupplier',
                //controller  : 'supplierControl'
            });
        
    });
    	/*adminApp.controller("categoryControl", [ '$scope',
		function($scope) {
			//success(function(data, status, headers, config) {
				//$scope.categories = data;
			//}).error(function(data, status, headers, config) {
				//alert( "failure");
			//});
	} ])
	
		adminApp.controller("supplierControl", [ '$scope',
			function($scope) {
				/* success(function(sdata, status, headers, config) {
					$scope.suppliers = sdata;
				}).error(function(data, status, headers, config) {
					alert( "failure");
				});
		} ])
	
		adminApp.controller("productCtrl", [ '$scope',
			function($scope) {
				/*success(function(pdata, status, headers, config) {
					$scope.products = pdata;
				}).error(function(data, status, headers, config) {
					alert( "failure");
				});
		} ])*/
		
		
    // create the controller and inject Angular's $scope
  /*  adminApp.controller('mainCtrl', function($scope) {
        // create a message to display in our view
        $scope.message = 'Everyone come and see how good I look!';
    });

    adminApp.controller('', function($scope) {
        $scope.message = 'Look! I am an about page.';
    });

    adminApp.controller('contactController', function($scope) {
        $scope.message = 'Contact us! JK. This is just a demo.';
    });*/