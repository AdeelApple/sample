<?php include 'top.php';

 $mlink = "?mcat=".$_GET['mcat'];
 $slink = $mlink."&subcat=".$_GET['subcat'];
 $dlink = $slink."&data=".$_GET['data'];

$id=$_GET['data'];
$qry = "select* from items where id = ".$id;
if(!$item_rs = mysqli_query($conn,$qry)) die("Error in query!!!"); 
	$it = mysqli_fetch_array($item_rs); 
?>
<div class="cp-col2">
	<div class="cp-body">
		<div class="header">
		<a href="home.php">categories</a></a>
		<b> &gt;&gt; </b><a href="subcat.php<?php echo $mlink; ?>"><?php echo m_nm($_GET['mcat']); ?></a>
		<b> &gt;&gt; </b><a href="itemlist.php<?php echo $slink; ?>"><?php echo s_nm($_GET['mcat'],$_GET['subcat']); ?></a>
		<b> &gt;&gt; </b><a href="edit.php<?php echo $dlink; ?>"><?php echo $it['name'] ?></a>
		</div>
		<div class="title cf">
			Edit Item
		</div>	
		<div class="cp-contents">
			<div class="upload-item">
				<form method="POST" action="do_update.php<?php echo $dlink; ?>" enctype="multipart/form-data">
					<div class="up-pic">
						<fieldset>
							<legend>Upload Image</legend>
							<div>
								<input type="file" name="item_pic" id="item_pic">
								<label>
									<input type="checkbox" name="mv_checkbox" id="mv-checkbox" <?php if($it['multi']) echo "checked" ?> >
									Upload more views
								</label>
							</div>
							<div class="more-view">
								<input type="file" name="item_pic1">
								<input type="file" name="item_pic2">
								<input type="file" name="item_pic3">				
							</div>
						</fieldset>
					</div>
					<div class="ins-it-box">
						<fieldset>
							<legend>Item Details</legend>
							<div><span>Name:</span> <input type="text" name="name" value="<?php echo $it['name'] ?>"> </div>
							<div><span>Artical Number:</span> <input type="text" name="art_num" value="<?php echo $it['art_num'] ?>">	</div>
							<div><span>Price:</span> <input type="text" name="price" value="<?php echo $it['price'] ?>">	</div>
							<div><span>Description:</span> <input type="text" name="descript" value="<?php echo $it['descript'] ?>">		</div>
							<div><span>Detail:</span> <textarea id="detail" name="detail"  value="<?php echo $it['detail'] ?>"></textarea>			</div>
							<div class="vpf-opt">
								<label>Variations:	<input type="checkbox" name="vr_checkbox" id="vr-checkbox" <?php if($it['vari']) echo "checked" ?>>			</label>
								<label>Published:	<input type="checkbox" name="pb_checkbox" id="pb-checkbox" <?php if($it['visible']) echo "checked" ?>>	</label>
								<label>Feature item:<input type="checkbox" name="ft_checkbox" id="ft-checkbox" <?php if($it['feature']) echo "checked" ?>>			</label>
							</div>
						</fieldset>
					</div>
					<div class="pic-box">
						<div></div>
						<div></div>
					</div>
					<div id="vari-box" class="vari-box">
						<fieldset>
							<legend>Variation Option</legend>
							<div class="opt-col">
								<label><input type="checkbox" name="sz_checkbox" class="enb-vr"<?php if($it['size']!='off') echo 'checked' ?>>Enable</label>
								<div class="cp-vr-opt">
									<h2>Size</h2>
									<?php $sz=$it['size']=='off'?'00000000':$it['size']; ?>
									<label>
									<input type="checkbox" name="sz_opt[0]" value="1" <?php if($sz[0]) echo "checked" ?>>extra small-XS</label>
									<label>
									<input type="checkbox" name="sz_opt[1]" value="1" <?php if($sz[1]) echo "checked" ?>>small-SM</label>
									<label>
									<input type="checkbox" name="sz_opt[2]" value="1" <?php if($sz[2]) echo "checked" ?>>medium-MD</label>
									<label>
									<input type="checkbox" name="sz_opt[3]" value="1" <?php if($sz[3]) echo "checked" ?>>larg-LG</label>
									<label>
									<input type="checkbox" name="sz_opt[4]" value="1" <?php if($sz[4]) echo "checked" ?>>extra larg-XL</label>
									<label>
									<input type="checkbox" name="sz_opt[5]" value="1" <?php if($sz[5]) echo "checked" ?>>2extra larg-XXL</label>
								</div>
							</div>
							<div class="opt-col">
								<label><input type="checkbox" name="clr_checkbox" class="enb-vr"<?php if($it['color']!='off') echo 'checked' ?>>Enable</label>
								<div class="cp-vr-opt">
									<h2>Color</h2>
									<?php $clr=$it['color']=='off'?'000000000000000000':$it['color']; ?>
									<div>
										<label><input type="checkbox" name="cl_opt[0]"  value="1"<?php if($clr[0]) echo "checked";?>>	black</label>
										<label><input type="checkbox" name="cl_opt[1]"  value="1"<?php if($clr[1]) echo "checked";?>>	white</label>
										<label><input type="checkbox" name="cl_opt[2]"  value="1"<?php if($clr[2]) echo "checked";?>>	red</label>
										<label><input type="checkbox" name="cl_opt[3]"  value="1"<?php if($clr[3]) echo "checked";?>>	grey</label>
										<label><input type="checkbox" name="cl_opt[4]"  value="1"<?php if($clr[4]) echo "checked";?>>	green</label>
										<label><input type="checkbox" name="cl_opt[5]"  value="1"<?php if($clr[5]) echo "checked";?>>	blue</label>
									</div>
									<div>
										<label><input type="checkbox" name="cl_opt[6]"  value="1"<?php if($clr[6]) echo "checked";?>>	gold</label>
										<label><input type="checkbox" name="cl_opt[7]"  value="1"<?php if($clr[7]) echo "checked";?>>	orange</label>
										<label><input type="checkbox" name="cl_opt[8]"  value="1"<?php if($clr[8]) echo "checked";?>>	lightgrey</label>
										<label><input type="checkbox" name="cl_opt[9]"  value="1"<?php if($clr[9]) echo "checked";?>>	brown</label>
										<label><input type="checkbox" name="cl_opt[10]" value="1"<?php if($clr[10]) echo "checked";?>>	yellow</label>
										<label><input type="checkbox" name="cl_opt[11]" value="1"<?php if($clr[11]) echo "checked";?>>	purple</label>
									</div>
									<div>
										<label><input type="checkbox" name="cl_opt[12]" value="1"<?php if($clr[12]) echo "checked";?>>	pink</label>
										<label><input type="checkbox" name="cl_opt[13]" value="1"<?php if($clr[13]) echo "checked";?>>	maroon</label>
										<label><input type="checkbox" name="cl_opt[14]" value="1"<?php if($clr[14]) echo "checked";?>>	chocolate</label>
										<label><input type="checkbox" name="cl_opt[15]" value="1"<?php if($clr[15]) echo "checked";?>>	skyblue</label>
										<label><input type="checkbox" name="cl_opt[16]" value="1"<?php if($clr[16]) echo "checked";?>>	violet</label>
										<label><input type="checkbox" name="cl_opt[17]" value="1"<?php if($clr[17]) echo "checked";?>>	khaki</label>
									</div>
								</div>
							</div>
							<div class="opt-col">
								<label  style="pointer-events: none; opacity: 0.5;"><input type="checkbox" name="vr_opt3" class="enb-vr";">Enable</label>
								<div class="cp-vr-opt">
									<h2>Custom</h2>
									<input type="text" name="vr_opt">
									<input type="text" name="vr_opt">
									<input type="text" name="vr_opt">
								</div>
							</div>
						</fieldset>
					</div>
					<div class="submit-it">
						<input type="submit" value=" Update ">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<?php include 'btm.php'; ?>