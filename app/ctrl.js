app.run(function($rootScope, $location, $http){
			$rootScope.baseUrl = "http://localhost/wealthclock/";
				$rootScope.authenticated = true;
				//var currentUrl = $location.url();
					
	/*		$rootScope.$on('$routeChangeStart', function (event, next, current) {
				$rootScope.showSidebar = false;
				$http.get($rootScope.baseUrl+'MainController/checkUserSession').then(function (response) {
					
					console.log(response);
					var nextUrl = next.$$route.originalPath;
				 // alert(response.data.authenticated=='true');
					if(response.data.authenticated == "true"){
						$rootScope.userId = response.data.userId;
						$rootScope.userEmail = response.data.userEmail;
						$rootScope.showSidebar = true;
						$rootScope.bodyClass = "no-skin";
						$rootScope.pageContentClass = "page-content";
						$location.path(nextUrl);
					}
					else{ 
								$rootScope.pageContentClass = "";
								// if (nextUrl == '/registration' || nextUrl == '/login' || nextUrl == '/forgotPassword' || nextUrl
								// 	== '/') { 
								// 		$location.path(nextUrl);
								// } 
								// else {
								// 				$location.path("/login");
								// 		}
								$location.path("/");
					}
				});
			});*/
		}); 
app.controller('frontSiteCtrl', function($scope, $http, $location){
		$scope.Message = "Content";
				if($location.path() == '/') 
				{
					$scope.header = 'app/templates/frontSite/homeHeader.html';
					$scope.footer = 'app/templates/frontSite/homeFooter.html';
				}
					
				else 
				{
					$scope.header = 'app/templates/frontSite/innerHeader.html';
					$scope.footer = 'app/templates/frontSite/innerFooter.html';
					
				}

});
app.controller('productOwnerCtrl', function($scope, $http){
		$scope.Message = "Wealth Clock Product Owner";
		if($location.path() == '/product-owner/login') 
					$scope.header = 'app/templates/frontSite/loginHeader.html';
				else 
				{
					$scope.header = 'app/templates/frontSite/header.html';
					$scope.sidebar = 'app/templates/frontSite/sidebar.html';
				}
					$scope.footer = 'app/templates/frontSite/footer.html';

		});

app.controller('companyOwnerCtrl', function($scope, $http, $location, $rootScope){
		//$scope.Message = $location.path();
				if($rootScope.authenticated) 
				{
					$scope.header = 'app/templates/companyOwner/header.html';
					$scope.sidebar = 'app/templates/companyOwner/sidebar.html';
					$scope.footer = 'app/templates/companyOwner/footer.html';
					$rootScope.bodyClass = 'no-skin';
				}
				else 
				{
					$scope.header = 'app/templates/companyOwner/loginHeader.html';
				//	$scope.footer = 'app/templates/companyOwner/loginFooter.html';
					$rootScope.bodyClass = 'login-layout';
				}

				$scope.masterCompanyCredentials={};      
				$scope.loginCompany =  function(credentials) {
				$scope.master = angular.copy(credentials);
				$http.post($rootScope.baseUrl+'companyController/login', $scope.master).then(function(response){
					$scope.responseData = response.data;
					if($scope.responseData)
						{
							$location.path('company-owner/dashboard');            
						}
					});
				}
                
                $scope.contactMaster = {};
                $scope.saveContact = function(contact) {
                      $scope.contactMaster = angular.copy(contact);
                      console.log($scope.contactMaster);
                      $scope.contactMaster.contactCity = jQuery('#select2-contactCity-container').attr("title");
                      $http.post($rootScope.baseUrl+'companyController/addContact', $scope.contactMaster).then(function(response){
                        $scope.contactResponseData = response.data;
                        console.log($scope.contactResponseData);
                      });            
                }
                
                $scope.cityMaster = {};
                $scope.saveCity = function(city) {
                      $scope.cityMaster = angular.copy(city);
                      $scope.cityMaster.stateId = jQuery('#select2-contactState-container').attr("title");
                      $http.post($rootScope.baseUrl+'companyController/addCity', $scope.cityMaster).then(function(response){
                        $scope.cityResponseData = response.data;
                        $http.get($rootScope.baseUrl+'companyController/fetchCity').then(function(response){
                        $scope.cityList = response.data;
                      });
                        
                      });            
                }
                
                $http.get($rootScope.baseUrl+'companyController/fetchState').then(function(response){
                        $scope.stateList = response.data;
                      });
                
                $http.get($rootScope.baseUrl+'companyController/fetchCity').then(function(response){
                        $scope.cityList = response.data;
                      });
              
		});

