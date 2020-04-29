<?php
session_start();
require 'build.php'; 

$or = $_POST['orank'];
$nr = $_POST['nrank'];
$id = $_POST['id'];
$mcat = $_GET['mcat'];
$subcat = $_GET['subcat'];
$sr = setrank();
if($nr>=$sr) $nr=$sr-1;

	if ($nr!=$or)
	{	
		$rnk = "select id from items where mcat=".$mcat." and subcat = ".$subcat;
		if($nr>$or)
		{
			$rnk .= " and rank >= ".$or." and rank <= ".$nr;
			$upqry = "update items set rank = rank-1 where id =";
		}else
		{
			$rnk .= " and rank <= ".$or." and rank >= ".$nr;
			$upqry = "update items set rank = rank+1 where id =";
		}

		if($ids = mysqli_query($conn, $rnk))
		{
			while($it = mysqli_fetch_array($ids))
			{
				mysqli_query($conn,$upqry.$it[0]);
			}
		}else{ die("rank fail"); }



		if($nm = mysqli_fetch_array(mysqli_query($conn, "select name from items where id=".$id.";"))){
			if(mysqli_query($conn, "update items set rank=".$nr." where id= ".$id)){


				$_SESSION['msg'] = "Item ".$nm[0]." moved to rank ".$nr;			
			}
		}
	}
	else
	{
		$_SESSION['msg'] = "Rank isnt effected!";
	}
 				$conn->close();
				header("Location: itemlist.php?mcat=".$_GET['mcat']."&subcat=".$_GET['subcat']);


 ?>