<?php
session_start();
require 'build.php';

$or = $_POST['orank'];
$nr = $_POST['nrank'];
$id = $_POST['id'];
$sr = setrank1('slider');
if($nr>=$sr) $nr=$sr-1;
if($nr<1) $nr=1;

	if ($nr!=$or)
	{	
		if($nr>$or)
		{
			$upqry = "update slider set rank = rank-1";
			$where = " where rank >= ".$or." and rank <= ".$nr;
		}else
		{
			$upqry = "update slider set rank = rank+1";
			$where = " where rank <= ".$or." and rank >= ".$nr;
		}

		if(!mysqli_query($conn, $upqry.$where))
			{ die("rank fail"); }


		if($nm = mysqli_fetch_array(mysqli_query($conn, "select name from slider where id=".$id.";"))){
			if(mysqli_query($conn, "update slider set rank=".$nr." where id= ".$id)){

				$_SESSION['msg'] = "Image ".$nm[0]." moved to rank ".$nr;
			}
		}
	}
	else
	{
		$_SESSION['msg'] = "Rank is not effected!";
	}
 		$conn->close();
		header("Location: crl.php");

 ?>