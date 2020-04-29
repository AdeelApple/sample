<?php 
session_start();
require 'build.php';






if(isset($_GET['data']))
{
	$qry = "update slider set name='".$_POST['name']."' where id=".$_GET['data'];
}else
{
	$lim = 1000000;
	$newname = fill_pic($conn,'slider','address');
	if(($ext = pathinfo($_FILES["pic"]["name"],PATHINFO_EXTENSION))!=''&&$_FILES['pic']['size']<$lim)
	{	
		$dir = "slider/". $newname .'.'.$ext;
		if (move_uploaded_file($_FILES["pic"]["tmp_name"], $dir))
		{
			echo "The pic has been uploaded.";
		}else
		{
			die("Sorry, pic cant be uploaded.");
		}
	}else {
		die("Image should be less than 1MB!");
	}
	$qry = "insert into slider(name, rank, address) values('".$_POST['name']."',".setrank1('slider').",'".$dir."')";
}

	if (mysqli_query($conn,$qry))
	{	mysqli_query($con, "update setting set slider=1");
		$succ = isset($_GET['data'])?'updated':'uploaded';
		$_SESSION['msg'] = "Image ".$succ." successfully";
		$conn->close();
		header("Location: crl.php");
	}else
	{
		die("Query fail!!!");
	}

?>