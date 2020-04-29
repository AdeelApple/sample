<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<title>control panel</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="img/favicon.png">
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../style.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="../bootstrap/js/jquery-3.1.1.min.js"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
</head>
<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=1"></' + 'script>')</script>
<body>
<?php $admin = "admin/"; ?>
<?php include 'build.php'; ?>
<div class="container">
	<?php include 'header.php'; ?>
	<div class="cp-row cp-padd bg3">
		<div class="row cp-content cf">
			<div class="cp-col1">
				<?php include 'cpmenu.php'; ?>
			</div>