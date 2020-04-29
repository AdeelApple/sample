<!DOCTYPE html>
<html>
<head>
	<title>Sample</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.png">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="bootstrap/js/jquery-3.1.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	
</head>
<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=1"></' + 'script>')</script>
<body>
	<?php $admin = 'admin/' ?>
	<?php include $admin.'build.php'; ?>
	<?php include 'header.php'; ?>
	<?php include 'carousel.php'; ?>
	<div class="container">
		<div class="width-controller">
			<div class="row">
				<div class="col1">
					<?php include 'sidemenu.php'; ?>
				</div>