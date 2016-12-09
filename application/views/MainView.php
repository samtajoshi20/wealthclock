<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html lang="en" ng-app="App">

<head>
<!-- jQuery -->

	<!-- <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet"> -->
	
	
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<!--<script src="assets-front/js/respond.min.js"></script>-->
	<![endif]-->

</head>
<body class="{{bodyClass}}">
	<ng-view>
</body>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>	
<script src="<?php echo base_url();?>app/app.js"></script>
<script src="<?php echo base_url();?>app/route.js"></script>
<script src="<?php echo base_url();?>app/ctrl.js"></script>
</html>
