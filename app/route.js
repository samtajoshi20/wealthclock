app.config(function($routeProvider) {
  $routeProvider
  .when("/", {
    templateUrl : "app/templates/frontSite/home.html",
    controller : "frontSiteCtrl",
  }).when("/pricing", {
    templateUrl : "app/templates/frontSite/pricing.html",
    controller : "frontSiteCtrl"
  }).when("/company-owner/login", {
    templateUrl : "app/templates/companyOwner/login.html",
    controller : "companyOwnerCtrl"
  }).when("/product-owner/login", {
    templateUrl : "app/templates/productOwner/login.html",
    controller : "productOwnerCtrl"
  }).when("/product-owner/registration", {
    templateUrl : "app/templates/productOwner/registration.html",
    controller : "productOwnerCtrl"
  }).otherwise({
        templateUrl : "app/templates/404.html"
    });
}); 