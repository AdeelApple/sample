<?php
	session_start(); 
	require 'build.php';


		$id 	  = $_GET['data'];
		$publish  = isset($_POST['pb_checkbox'])? 1:0;
		$feature  = isset($_POST['ft_checkbox'])? 1:0;
		$multi	  = isset($_POST['mv_checkbox'])? 1:0;
		$vari 	  = isset($_POST['vr_checkbox'])? 1:0;
		$sz 	  = isset($_POST['sz_checkbox'])? 1:0;
		$clr 	  = isset($_POST['clr_checkbox'])? 1:0;

		function itname($obj,$i){
				$t1 = explode('/', $obj);
				$t2 = explode('.', $t1[1]);
				return $t2[$i];
		}

		if(!$rs = mysqli_query($conn,"select* from items where id=".$id)){ echo "Fetching fail"; }
		$it = mysqli_fetch_array($rs);

		$newname = itname($it['pic'],0);
		$ext0 = itname($it['pic'],1);
		$ext = pathinfo($_FILES["pic"]["name"],PATHINFO_EXTENSION);
		if($ext!='')
		{
			$dir = "images/". $newname .'.'.$ext;
			if (move_uploaded_file($_FILES["item_pic"]["tmp_name"], $dir))
				{	echo "The pic has been uploaded.";	}else {	echo "Sorry, pic cant be uploaded.";	}
		}
		if($ext=!$ext0) unlink($it['pic']);

		$multi_pic = "none";
		if($multi)
		{

			$ext1 = pathinfo($_FILES["pic1"]["name"],PATHINFO_EXTENSION);
			if($ext1!='')
			{ $dir1 = "images/".$newname.'_a.'.$ext1;	$multi_pic=$dir1;
				echo 'Image1 upload '.move_uploaded_file($_FILES["item_pic1"]["tmp_name"],$dir1)?"success1":" Fail1";
				$ext2 = pathinfo($_FILES["pic2"]["name"],PATHINFO_EXTENSION);
	
				if($ext2!='')
				{	$dir2 = "images/".$newname.'_b.'.$ext2;	$multi_pic.= "|".$dir2;
					echo 'Image2 upload '.move_uploaded_file($_FILES["item_pic2"]["tmp_name"],$dir2)?"success2":" Fail2";
					$ext3 = pathinfo($_FILES["pic3"]["name"],PATHINFO_EXTENSION);
	
					if($ext3!='')
					{ 	$dir3 = "images/".$newname.'_c.'.$ext3;	$multi_pic.= "|".$dir3;
						echo 'Image3 upload '.move_uploaded_file($_FILES["pic3"]["tmp_name"],$dir3)?"success3":" Fail3";
					}
				}
			}
	
			if($multi_pic == "none")
				$multi = 0;
			else
			{
				if($it['multi'])
				{
					$pics = explode('|', $it['multi_pic']);
					foreach ($pics as $value)
						unlink($value);
				}
			}
		}


		$sz_arr = 'off';
		$clr_arr = 'off';

		if($vari){
			if($sz)  $sz_arr  = join(array_replace(str_split("000000"), $_POST['sz_opt']));
			if($clr) $clr_arr = join(array_replace(str_split("000000000000000000"), $_POST['cl_opt']));
		}





		$vari_id	= 1;
		$size_str 	= $sz_arr;
		$color_str	= $clr_arr;
		


	$qry="UPDATE items SET name='".$_POST['name']."',art_num='".$_POST['art_num']."',price='".$_POST['price']."',descript='".$_POST['descript']."',detail='".$_POST['detail']."',feature=".$feature.",multi=".$multi.",vari=".$vari.",vari_id=".$vari_id.",size='".$size_str."',color='".$color_str."',visible=".$publish;

	if($multi)	 $qry.=", multi_pic='".$multi_pic."'";
	if($ext!='') $qry.=", pic='".$dir."'";
	
	$qry.=" WHERE id = ".$id;


	if($ans = mysqli_query($conn,$qry)){
		$_SESSION['msg'] = 'Item upddated';
		$conn->close();
		header("Location: itemlist.php?mcat=".$_GET['mcat']."&subcat=".$_GET['subcat']);
		}
		else 
			die("Item update Failed error in query!".$ans);

?>