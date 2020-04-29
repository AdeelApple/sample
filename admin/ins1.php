<?php 
	
	require 'build.php';

	$id = isset($_POST["id"])? $_POST["id"]:"";
	$tbl = isset($_POST["tbl"])? $_POST["tbl"]:"";
	$msg = isset($_POST["msg"])? $_POST["msg"]:"";
	$val = isset($_POST["val"])? $_POST["val"]:"";
	$fun = $_POST["fun"];


	if ($fun=='del_image') del_image($conn,$id,$tbl,$msg);
	if ($fun=='set_bit') set_bit($conn,$id,$tbl,$msg,$val);


	function del_image($con,$id,$tbl,$msg)
	{
		if($rs=mysqli_fetch_array(mysqli_query($con, "select address from ".$tbl." where id=".$id))[0])
		{
			unlink($rs);
			if(mysqli_query($con, "delete from ".$tbl." where id=".$id))
			{
				echo $msg." deleted successfully.";
			}

		}else
		{
			echo "Error Query fail";
		}
	}
	function set_bit($con,$id,$tbl,$msg,$val){
		if (mysqli_query($con, "update ".$tbl." set ".$id."=".$val))
		{
			echo  $val? $msg." published" : $msg." is now hidden";
		}
	}
	function publishing($conn,$id,$msg)
{

	if (mysqli_query($conn, "update ".$_POST['tbl']." set visible=".$_POST['val']." where id = ".$id ))
	{	echo  $_POST['val']? $msg." published" : $msg." is now hidden";	}
	
}
	
 ?>