<?php include 'top.php'; ?>
<div class="col2">
	<div class="container">
		<div class="row itcontain">
			<div class="itemhead">Items</div>

			<?php 
			if($it_rs = mysqli_query($conn,"select* from items where visible = 1")){}	
			while($dr = mysqli_fetch_array($it_rs)){ 
				$pic = $admin.$dr['pic']; ?>
			<div class="itbody">
				<div class="itpic"><a href="details.php?data=<?php echo $dr['id'];?>">
					<img src="<?php echo $pic; ?>"></a></div>
				<div class="itname"><b>Name: </b><?php echo $dr["name"]; ?></div>
				<div class="itart"><b>Model: </b><?php echo $dr["art_num"]; ?></div>
				<div class="itdes"><b>Description: </b><?php echo $dr["descript"]; ?></div>
				<div class="itopt">
					<a href="#" class="btn custom">customize</a>
					<a href="#" class="btn inqbasket">Add to cart</a>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
</div>
<?php include 'btm.php'; ?>