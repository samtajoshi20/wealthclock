<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html lang="en" ng-app="App">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>	
<script src="<?php echo base_url();?>app/app.js"></script>
<script src="<?php echo base_url();?>app/route.js"></script>
<script src="<?php echo base_url();?>app/ctrl.js"></script>
</head>
<body class="{{bodyClass}}">
	<ng-view>
</body>
		
</html>
