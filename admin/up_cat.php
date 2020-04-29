<?php
session_start();
require 'build.php';

if (mysqli_query($conn, "insert into m_cat(name, rank, mcat) values('".$_POST['mcat_name']."',".setrankm().", ".fill($conn,'m_cat','mcat').")"))
{
	$conn->close();
	$_SESSION['msg'] = "New Category created successfully";
	header("Location: home.php");
}else echo "error in query";

?>