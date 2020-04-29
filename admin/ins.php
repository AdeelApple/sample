
<?php
require 'build.php';

	$id = $_POST['id'];
	$mcat = $_POST['mcat'];
	$subcat = $_POST['subcat'];
	$msg = $_POST['msg'];


if($_POST['fun']=='del_it')		del_items($conn,$id,$mcat,$subcat,0,$msg);
if($_POST['fun']=='del_mcat')	del_mcat($conn,$id,$mcat,$subcat,0,$msg);
if($_POST['fun']=='del_subcat')	del_subcat($conn,$id,$mcat,$subcat,0,$msg);
if($_POST['fun']=='pub')		publishing($conn,$id,$msg);

function del_items($conn,$id,$fmcat,$fsubcat,$s,$msg){
	$qry1 = "mcat = ".$fmcat." and subcat=".$fsubcat;
	if ($s==2) $qry1 = "mcat = ".$fmcat;
	$qry2 = $s?	$qry1 : "id = ".$id;

	$qry = "select pic, multi, multi_pic from items where ";

	$qry .= $qry2;
	if ($it_del = mysqli_query($conn, $qry ))
	{
		while($it_data = mysqli_fetch_array($it_del))
		{
			if ($it_data['pic']!='images/nop.jpg')
					unlink($it_data['pic']);
		
			if($it_data['multi'])
			{
				$pics = explode('|', $it_data['multi_pic']);
				foreach ($pics as $value)
					unlink($value);
			}
		}
		$delqry = "delete from items where ".$qry2;
		if (mysqli_query($conn, $delqry ))
			echo $msg." deleted successfully.";	
			else echo $msg." deleted Fail!.";
	}
	if ($s==0)
	{
		$rnk = "select id, rank from items where mcat=".$fmcat." and subcat = ".$fsubcat." and rank > ".$_POST['rank'].";";
		if($rank = mysqli_query($conn, $rnk)){
			while($rk = mysqli_fetch_array($rank)){
				mysqli_query($conn,"update items set rank=rank-1 where id=".$rk['id']);
			}

		}else{ echo "rank fail"; }
	}
}

function del_subcat($conn,$id,$fmcat,$fsubcat,$s,$msg){
	$tm = $s? 2:1;
	del_items($conn,$id,$fmcat,$fsubcat,$tm,$msg);

	$qry = "delete from sub_cat where ";
	$qry .= $s? "mcat=".$fmcat : "id = ".$id;
	if (mysqli_query($conn, $qry )){ } else echo "Query Failed";
}

function del_mcat($conn,$id,$fmcat,$fsubcat,$s,$msg){
	del_subcat($conn,$id,$fmcat,$fsubcat,1,$msg);
	if (mysqli_query($conn, "delete from m_cat where id =".$id )){ } else echo "Query Failed";
}

function publishing($conn,$id,$msg)
{

	if (mysqli_query($conn, "update ".$_POST['tbl']." set visible=".$_POST['val']." where id = ".$id ))
	{	echo  $_POST['val']? $msg." published" : $msg." is now hidden";	}
	
}

$conn->close();
?>
