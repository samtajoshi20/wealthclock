app.run(function($rootScope, $location, $http){
      $rootScope.baseUrl = "http://localhost/wealthclock/";
      // $rootScope.$on('$routeChangeStart', function (event, next, current) {
      //   $rootScope.authenticated = false;
      //   $rootScope.showSidebar = false;
      //   $http.get($rootScope.baseUrl+'MainController/checkUserSession').then(function (response) {
      //     console.log(response);
      //     var nextUrl = next.$$route.originalPath;
      //    // alert(response.data.authenticated=='true');
      //     if(response.data.authenticated == "true"){
      //       $rootScope.userId = response.data.userId;
      //       $rootScope.userEmail = response.data.userEmail;
      //       $rootScope.showSidebar = true;
      //       $rootScope.bodyClass = "no-skin";
      //       $rootScope.pageContentClass = "page-content";
      //       $location.path(nextUrl);
      //     }
      //     else{ 
      //           $rootScope.pageContentClass = "";
      //           if (nextUrl == '/registration' || nextUrl == '/login' || nextUrl == '/forgotPassword' || nextUrl
      //           	== '/') { 
      //               $location.path(nextUrl);
      //           } 
      //           else {
      //                   $location.path("/login");
      //               }
      //     }
      //   });
      // });
    });

app.controller('frontSiteCtrl', function($scope, $http, $location){
		$scope.Message = "Wealth Clock Front Site";
				if($location.path() == '/')
        {
          $scope.header = 'app/templates/frontSite/homeHeader.html';
          $scope.footer = 'app/templates/frontSite/footer.html';
        } 
					
				else 
        {
          $scope.header = 'app/templates/frontSite/innerHeader.html';
          $scope.footer = 'app/templates/frontSite/innerfooter.html';
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

app.controller('companyOwnerCtrl', function($scope, $http, $location){
		$scope.Message = $location.path();
				if($location.path() == '/company-owner/login') 
				{
					$scope.header = 'app/templates/companyOwner/loginHeader.html';
				}
				else 
				{
					$scope.header = 'app/templates/companyOwner/header.html';
					$scope.sidebar = 'app/templates/companyOwner/sidebar.html';
				}
					$scope.footer = 'app/templates/companyOwner/footer.html';

    });