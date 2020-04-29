<?php include 'top.php'; ?>
<div class="col2">
	<div class="container">
		<div class="row itcontain">
			<div class="itemhead">Items</div>
			<div class="dtbody">
				<?php
				$id = $_GET['data'];
				$qry = "select* from items where id = '".$id."'";
				if($item_rs = mysqli_query($conn,$qry)){}
					$item = mysqli_fetch_array($item_rs);
				$pic = $admin.$item['pic'];
				?>	
				<div class="dtpic">
					<img id="zoom_mw" src="<?php echo $pic; ?>" data-zoom-image="<?php echo $pic; ?>"/>



					<?php
					if($item['multi']){   
						$pics = explode('|',$item['multi_pic']); ?>
						<div id="gallery" class="multi-img">
							<a href="#" class="img-thumb active" title="scroll to zoom" data-image="<?php echo $pic; ?>" data-zoom-image="<?php echo $pic; ?>">
								<img class="thumb" src="<?php echo $pic; ?>" alt="">
							</a>
							<?php foreach ($pics as $key => $value) {  ?>			
							<a href="#" class="img-thumb" data-image="<?php echo $admin.$value; ?>" data-zoom-image="<?php echo $admin.$value; ?>">
								<img class="thumb" src="<?php echo $admin.$value; ?>">
							</a>
							<?php } ?>
						</div>
						<?php } ?>

				</div>

					<div class="dtdt">
						<div class="dtname"><b>Name: </b><?php echo $item['name']; ?></div>
						<div class="dtart"><b>Model: </b><?php echo $item['art_num']; ?></div>
						<div class="dtdes"><b>Description: </b><?php echo $item['descript']; ?></div>
						<div class="dt"><b>Detail: </b><?php echo $item['detail']; ?></div>
						<div class="vr-opt">
							<?php if($item['vari']&&$item['size']!='off'||$item['color']!='off'){
								if($opt = mysqli_query($conn,'select* from vari_opt where main_id = 1')){
									if (($sz = $item['size'])!='off') {  $i=0;  ?>
									<div class="vari-dropbox">
										<label for="ab"><b>Size: </b></label>
										<select name="ab" id="ab">
											<?php while($op = mysqli_fetch_array($opt)){ if($sz[$i++]){ $nm=$op['name']; ?>
											<option value="<?php echo $nm;?>" <?php if($nm=='L') echo 'selected'; ?>><?php echo $nm; ?></option>
											<?php }} ?>
										</select>
									</div>
									<?php }} ?>

									<?php 
									if($opt = mysqli_query($conn,'select* from vari_opt where main_id = 2')){ 
										if (($cl = $item['color'])!='off') { $i=0; ?>
										<div class="vari-dropbox">
											<label for="ab1"><b>Color: </b></label>
											<select name="ab" id="ab1">
												<?php while($op = mysqli_fetch_array($opt)){ if($cl[$i++]){ $nm=$op['name']; ?>
												<option value="<?php echo $nm;?>"><?php echo $nm; ?></option>
												<?php }} ?>
											</select>
										</div>
										<?php }}} ?>
									</div>
									<div class="qty"><b>Quantity: </b><input type="text" size="2"></div>
									<div class="dtopt">
										<div class="btn addbasket">Add to inquairy Basket</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script src="scripts/zm.min.js"></script>
				<script>
					$(document).ready(function() {
						$("#zoom_mw").elevateZoom({scrollZoom : 'true', gallery:'gallery', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: 'images/loading.gif'});
					});
				</script>
				<?php include 'btm.php'; ?>