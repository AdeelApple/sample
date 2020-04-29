<?php
session_start();
require 'build.php';
	
	$qry = "insert into sub_cat(name, rank, mcat, subcat) values('".$_POST['subcat_name']."',".setranks().", ".$_GET['mcat'].",".fill_subcat('sub_cat','subcat').")";
	if (mysqli_query($conn, $qry))
	{
		$conn->close();
		$_SESSION['msg'] = "New Sub Category created successfully";
		header("Location: subcat.php?mcat=".$_GET['mcat']);
	}else echo "error in query";
?>