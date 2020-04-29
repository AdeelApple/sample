<?php 



$conn = mysqli_connect("localhost", "root", "","sample");


	$sett = mysqli_fetch_array(mysqli_query($conn,"select* from setting"));
	$crl = $sett['slider'];
	

	function fill_pic($con,$tbl,$clm){
			$ids = mysqli_query($con, "select ".$clm." from ".$tbl.";");	$inc = 1;
			while ($idchk = mysqli_fetch_array($ids)) {
				$nm = explode('/',$idchk[$clm]);
				$nm = explode('.',$nm[1]);
				if ($nm[0]==$inc||$nm[0]=='nop')
					{	if($nm[0]!='nop') $inc++;	continue;	}
				break;
			}return $inc;
	}

	function fill($con,$tbl,$clm){
			$ids = mysqli_query($con, "select ".$clm." from ".$tbl.";");	$inc = 1;
			while ($idchk = mysqli_fetch_array($ids)) {
				if ($idchk[0]==$inc)
					{  $inc++;	continue;	}
				break;
			}return $inc;
	}

	function fill_subcat($tbl,$clm){
			$ids = mysqli_query($GLOBALS['conn'], "select ".$clm." from ".$tbl." where mcat=".$_GET['mcat'].";");	$inc = 1;
			while ($idchk = mysqli_fetch_array($ids)) {
				if ($idchk[0]==$inc)
					{  $inc++;	continue;	}
				break;
			}return $inc;
	}

	function m_nm($m){
		if($cdb = mysqli_query($GLOBALS['conn'],"select name from m_cat where mcat = '".$m."'"))
			{return mysqli_fetch_array($cdb)[0];}
	}

	function s_nm($m,$s){
		if($cdb = mysqli_query($GLOBALS['conn'],"select name from sub_cat where mcat='".$m."' and subcat='".$s."'"))
		return mysqli_fetch_array($cdb)[0]; 
	}

	
	function setrankm(){
	$qry = "select rank from m_cat order by rank desc limit 1";	
		return mysqli_fetch_array(mysqli_query($GLOBALS['conn'],$qry))[0]+1;			
	}
	function setranks(){
	$qry = "select rank from sub_cat where mcat = ".$_GET['mcat']." order by rank desc limit 1";	
		return mysqli_fetch_array(mysqli_query($GLOBALS['conn'],$qry))[0]+1;			
	}
	function setrank(){
	$qry = "select rank from items where mcat = ".$_GET['mcat']." and subcat= ".$_GET['subcat']. " order by rank desc limit 1";	
		return mysqli_fetch_array(mysqli_query($GLOBALS['conn'],$qry))[0]+1;			
	}
	function setrank1($tbl){
	$qry = "select rank from ".$tbl." order by rank desc limit 1";	
		return mysqli_fetch_array(mysqli_query($GLOBALS['conn'],$qry))[0]+1;			
	}
	function lastrank($tbl){
	$qry = "select rank from ".$tbl." order by rank desc limit 1";	
		return mysqli_fetch_array(mysqli_query($GLOBALS['conn'],$qry))[0]+1;			
	}

 ?>