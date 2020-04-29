<?php include 'top.php'; 

$mlink = "?mcat=".$_GET['mcat'];
$slink = $mlink."&subcat=".$_GET['subcat'];
?>

<div class="cp-col2">
	<div class="cp-body">
		<div class="header">
			<a href="home.php">categories</a></a>
			<b> &gt;&gt; </b><a href="subcat.php<?php echo $mlink; ?>"><?php echo m_nm($_GET['mcat']); ?></a>
			<b> &gt;&gt; </b><a href="itemlist.php<?php echo $slink; ?>"><?php echo s_nm($_GET['mcat'],$_GET['subcat']); ?></a>
			<b> &gt;&gt; </b><a href="edit.php<?php echo $dlink; ?>">add new item</a>
		</div>
		<div class="title cf">
			Insert Item
		</div>
		<div class="cp-contents">
			<div class="upload-item">
				<form method="POST" action="do_upload.php?mcat=<?php echo $_GET['mcat'];?>&subcat=<?php echo $_GET['subcat'];?>" enctype="multipart/form-data">
					<div class="up-pic">
						<fieldset>
							<legend>Upload Image</legend>
							<div>
				
								<input type="file" name="pic" id="item_pic">
								<p>max size = 3mb</p>
				
								<label>
									<input type="checkbox" name="mv_checkbox" id="mv-checkbox">
									Upload more views
								</label>
							</div>
							<div class="more-view">
								<input type="file" name="pic1">
								<input type="file" name="pic2">
								<input type="file" name="pic3">				
								<p>max size for each = 3mb</p>
							</div>
						</fieldset>
					</div>
					<div class="ins-it-box">
						<fieldset>
							<legend>Item Details</legend>
							<div><span>Name:</span> <input type="text" name="name">				</div>
							<div><span>Artical Number:</span> <input type="text" name="art_num">	</div>
							<div><span>Price:</span> <input type="text" name="price">	</div>
							<div><span>Description:</span> <input type="text" name="descript">		</div>
							<div><span>Detail:</span> <textarea id="detail" name="detail"></textarea>			</div>
							<div class="vpf-opt">
								<label>Variations:	<input type="checkbox" name="vr_checkbox" id="vr-checkbox">			</label>
								<label>Published:	<input type="checkbox" name="pb_checkbox" id="pb-checkbox" checked>	</label>
								<label>Feature item:<input type="checkbox" name="ft_checkbox" id="ft-checkbox">			</label>
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
								<label><input type="checkbox" name="sz_checkbox" class="enb-vr">Enable</label>
								<div class="cp-vr-opt">
									<h2>Size</h2>
									<label><input type="checkbox" name="sz_opt[0]" value="1" checked>	extra small-XS</label>
									<label><input type="checkbox" name="sz_opt[1]" value="1" checked>		small-SM</label>
									<label><input type="checkbox" name="sz_opt[2]" value="1" checked>		medium-MD</label>
									<label><input type="checkbox" name="sz_opt[3]" value="1" checked>		larg-LG</label>
									<label><input type="checkbox" name="sz_opt[4]" value="1" checked>	extra larg-XL</label>
									<label><input type="checkbox" name="sz_opt[5]" value="1" checked>	2extra larg-XXL</label>
								</div>
							</div>
							<div class="opt-col">
								<label><input type="checkbox" name="clr_checkbox" class="enb-vr">Enable</label>
								<div class="cp-vr-opt">
									<h2>Color</h2>
									<div>
										<label><input type="checkbox" name="cl_opt[0]"  value="1" checked>	black</label>
										<label><input type="checkbox" name="cl_opt[1]"  value="1" checked>	white</label>
										<label><input type="checkbox" name="cl_opt[2]"  value="1" checked>	red</label>
										<label><input type="checkbox" name="cl_opt[3]"  value="1">			grey</label>
										<label><input type="checkbox" name="cl_opt[4]"  value="1">			green</label>
										<label><input type="checkbox" name="cl_opt[5]"  value="1">			blue</label>
									</div>
									<div>
										<label><input type="checkbox" name="cl_opt[6]"  value="1">		gold</label>
										<label><input type="checkbox" name="cl_opt[7]"  value="1">		orange</label>
										<label><input type="checkbox" name="cl_opt[8]"  value="1">	lightgrey</label>
										<label><input type="checkbox" name="cl_opt[9]"  value="1">		brown</label>
										<label><input type="checkbox" name="cl_opt[10]" value="1">		yellow</label>
										<label><input type="checkbox" name="cl_opt[11]" value="1">		purple</label>
									</div>
									<div>
										<label><input type="checkbox" name="cl_opt[12]" value="1">		pink</label>
										<label><input type="checkbox" name="cl_opt[13]" value="1">		maroon</label>
										<label><input type="checkbox" name="cl_opt[14]" value="1">	chocolate</label>
										<label><input type="checkbox" name="cl_opt[15]" value="1">	skyblue</label>
										<label><input type="checkbox" name="cl_opt[16]" value="1">		violet</label>
										<label><input type="checkbox" name="cl_opt[17]" value="1">		khaki</label>
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
						<input type="submit" value=" Upload ">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<?php include 'btm.php'; ?>