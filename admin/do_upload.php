<?php
		
		session_start();
		require 'build.php';

		$publish  = isset($_POST['pb_checkbox'])? 1:0;
		$feature  = isset($_POST['ft_checkbox'])? 1:0;
		$multi	  = isset($_POST['mv_checkbox'])? 1:0;
		$vari 	  = isset($_POST['vr_checkbox'])? 1:0;
		$sz 	  = isset($_POST['sz_checkbox'])? 1:0;
		$clr 	  = isset($_POST['clr_checkbox'])? 1:0;
		$lim	  = 3000000;


		$newname = fill_pic($conn,'items','pic');
		if(($ext = pathinfo($_FILES["pic"]["name"],PATHINFO_EXTENSION))!=''&&$_FILES['pic']['size']<$lim){

		$dir = "images/". $newname .'.'.$ext;
		if (move_uploaded_file($_FILES["pic"]["tmp_name"], $dir))
			{	echo "The pic has been uploaded.";	}else {	echo "Sorry, pic cant be uploaded.";	}
		}else $dir='images/nop.jpg';

		// $sz_lim = 1;
		// ($_FILES['pic1']['size']<$lim&&$_FILES['pic1']['size']<$lim&&$_FILES['pic1']['size']<$lim&&$_FILES['pic3']['size']<$lim)

		$multi_pic = "none";
		if($multi){
			$ext1 = pathinfo($_FILES["pic1"]["name"],PATHINFO_EXTENSION);
			if($ext1!=''&&$_FILES['pic1']['size']<$lim)
			{	$dir1 = "images/".$newname.'_a.'.$ext1;	$multi_pic=$dir1;
				echo 'Image1 upload '.move_uploaded_file($_FILES["pic1"]["tmp_name"],$dir1)?"success":" Fail";
				$ext2 = pathinfo($_FILES["pic2"]["name"],PATHINFO_EXTENSION);
				if($ext2!=''&&$_FILES['pic2']['size']<$lim)
				{	$dir2 = "images/".$newname.'_b.'.$ext2;	$multi_pic.= "|".$dir2;
					echo 'Image2 upload '.move_uploaded_file($_FILES["pic2"]["tmp_name"],$dir2)?"success":" Fail";
					$ext3 = pathinfo($_FILES["pic3"]["name"],PATHINFO_EXTENSION);
					if($ext3!=''&&$_FILES['pic3']['size']<$lim)
					{	$dir3 = "images/".$newname.'_c.'.$ext3;	$multi_pic.= "|".$dir3;
						echo 'Image3 upload '.move_uploaded_file($_FILES["pic3"]["tmp_name"],$dir3)?"success":" Fail";
					}
				}
			}
		if($multi_pic == "none") $multi = 0;
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
		$rank 		= setrank('items');
		
		$qry1="insert into items(name)	 VALUES ('ad')";


	$qry="insert into items(name, art_num, price, descript, detail, mcat, subcat, feature, multi, vari, vari_id, size, color, rank, visible, multi_pic, pic)	 VALUES ('".$_POST['name']."','".$_POST['art_num']."','".$_POST['price']."','".$_POST['descript']."','".$_POST['detail']."','".$_GET['mcat']."','".$_GET['subcat']."',".$feature.",".$multi.",".$vari.",".$vari_id.",'".$size_str."','".$color_str."',".$rank.",".$publish.",'".$multi_pic."','".$dir."')";

		if($ans = mysqli_query($conn,$qry))
		{
			echo "Data row inserted Successfully.";
			$conn->close();
			$_SESSION['msg'] = "uploaded";
			header("Location: itemlist.php?mcat=".$_GET['mcat']."&subcat=".$_GET['subcat']);
		}
		else
			die("Data Row insertion Failed.".$ans);

		

  ?>