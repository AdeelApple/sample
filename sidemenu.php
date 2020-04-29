<div class="container">
	<div class="row side-menu">
		<div class="startmenu">Categories</div>
		
		<?php 
		if($m_cat_rs = mysqli_query($conn,"select* from m_cat where visible = 1"))
		while($mcat = mysqli_fetch_array($m_cat_rs)){ ?>
		
		<div onclick="collapse(this);" class="btn side-btn"><?php echo $mcat['name']; ?></div>		
		<div class="submenu">
			<ul>				
				<?php					
					$qry = "select* from sub_cat where mcat = '".$mcat['mcat']."' and visible = 1";
				 	if($sub_cat_rs = mysqli_query($conn,$qry)){		}
				while($subcat = mysqli_fetch_array($sub_cat_rs)){
				 ?>
				<a href="item.php?mcat=<?php echo $mcat['mcat'];?>&subcat=<?php echo $subcat['subcat'];?>"><li><?php echo $subcat['name']; ?></li></a>
				<?php } ?>
			</ul>
		</div>
		<?php } ?>
	</div>
	<div class="row subs">
		<div class="subs-in cf">
			<form action="subs.php" method="POST">
				Get updated with our latest news and info...<br>
				<input type="text" name="sub_email" placeholder=" Your Email" class="subs-inp">
				<input type="submit" class="btn btn-yes subs-btn">
			</form>
		</div>
	</div>
</div>