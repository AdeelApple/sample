<?php include 'top.php'; ?>
				<div class="col2">
					<div class="container">
						<div class="row itcontain">
							<div class="itemhead">Items</div>

							<?php 
							$qry = "select* from items where mcat = '".$_GET['mcat']."' and subcat = '".$_GET['subcat']."' and visible = 1 order by rank";
					 		if($db_item_rs = mysqli_query($conn,$qry)){}

							while($dr = mysqli_fetch_array($db_item_rs)){ $pic = $admin.$dr['pic']; ?>

							<div class="itbody">
								<div class="itpic"><a href="details.php?data=<?php echo $dr['id'];?>">
									<img src="<?php echo $pic;?>"></a></div>
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