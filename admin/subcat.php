<?php include 'top.php';
$mlink = "?mcat=".$_GET['mcat'];
 ?>
<div class="cp-col2">
	<div class="cp-body">
		<div class="header">
			<a href="home.php">Categories</a>
			<b> &gt;&gt; </b><a href="subcat.php<?php echo $mlink; ?>"><?php echo m_nm($_GET['mcat']); ?></a>
		</div>
		<div class="c-menu">
			<a href="ins_sub_cat.php<?php echo $mlink; ?>"><div class="btn">New Sub-Catagorie</div></a>
		</div>
		<div class="title cf">
			<table width="100%" class="h-table">
				<thead>
					<th width="5%" >#</th>
					<th width="60%">Sub Categories</th>
					<th width="10%">Rank</th>
					<th width="10%">Published</th>
					<th width="15%">Delete</th>
				</thead>
			</table>
		</div>
		<div class="cp-contents">
			<form action="" method="POST">
				<table class="tbl">
					<?php	
					$qry = "select* from sub_cat where mcat = '".$_GET['mcat']."'";
					if($sub_cat_rs = mysqli_query($conn,$qry)){
						while($subcat = mysqli_fetch_array($sub_cat_rs)){
							?>
					<tr>
						<td width="5%" ><?php echo $subcat['id']; ?></td>
						<td width="60%"><a href="itemlist.php?mcat=<?php echo $_GET['mcat'];?>&subcat=<?php echo $subcat['subcat'];?>"><?php echo $subcat['name']; ?></a></td>
						<td width="10%"><input type="text" value="<?php echo $subcat['rank']; ?>"><a class="fa cprank" type="submit"></a></td>
						<td width="10%">
						<div class="pb-check">
                            <input type="checkbox" onchange="pb_slide(this,'sub_cat','Sub-category');" id="<?php echo $subcat['id']; ?>" <?php if($subcat['visible']) echo 'checked'; ?> />
                            <label for="<?php echo $subcat['id']; ?>"></label>
                        </div>
						</td>
						<td width="15%"><div class="fa cpdel" onclick="del_fun(this,<?php echo $subcat['id']; ?>,'sub_cat',<?php echo $_GET['mcat']; ?>,<?php echo $subcat['subcat']; ?>,'Sub-Catagory','del_subcat');"></div></td>
					</tr>
							<?php }} ?>
				</table>
			</form>
		</div>
	</div>
</div>

<?php include 'btm.php'; ?>