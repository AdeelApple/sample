<?php include 'top.php';

$mlink = "?mcat=".$_GET['mcat'];
$slink = $mlink."&subcat=".$_GET['subcat'];
 ?>
<div class="cp-col2">
	<div class="cp-body">
		<div class="header">
			<a href="home.php">Categories</a>
			<b> &gt;&gt; </b><a href="subcat.php<?php echo $mlink; ?>"><?php echo m_nm($_GET['mcat']); ?></a>
			<b> &gt;&gt; </b><a href="itemlist.php<?php echo $slink; ?>"><?php echo s_nm($_GET['mcat'],$_GET['subcat']); ?></a>
		</div>
		<div class="c-menu">
			<a href="ins_it.php<?php echo $slink;?>"><div class="btn addbtn">Add New Item</div></a>
		</div>
		<div class="title cf">
			<table width="100%" class="h-table">
				<thead>
					<th width="5%" >#</th>
					<th width="60%">Items</th>
					<th width="10%">Rank</th>
					<th width="10%">Published</th>
					<th width="15%">Delete</th>
				</thead>
			</table>
		</div>
		<div class="cp-contents">
			
				<table class="tbl">
					<?php
							$qry = "select* from items where mcat = '".$_GET['mcat']."' and subcat = '".$_GET['subcat']."' order by rank";
					 		if($it_rs = mysqli_query($conn,$qry)){} $ir = 1;

							while($it = mysqli_fetch_array($it_rs)){ 	?>
					<tr>
						<td width="5%" ><?php echo $it['id']; ?></td>
						<td width="60%"><a href="edit.php<?php echo $slink; ?>&data=<?php echo $it['id']; ?>"><?php echo $it['name']; ?></a></td>
						<td width="10%" align="center">
							<form method="post" action="do_setrank.php<?php echo $slink; ?>">
								<input class="rinp" type="number" name="nrank" value="<?php echo $it['rank']; ?>">
								<input type="hidden" name="orank" value="<?php echo $it['rank']; ?>">
								<input type="hidden" name="id" value="<?php echo $it['id']; ?>">
								<input style="width: 20px; display: none;" type="submit" value="go" />
							</form>
						</td>
						<td width="10%">
						<div class="pb-check">
                            <input type="checkbox" onchange="pb_slide(this,'items','Item');" id="<?php echo $it['id']; ?>" <?php if($it['visible']) echo 'checked'; ?> />
                            <label for="<?php echo $it['id']; ?>"></label>
                        </div>
						</td>
						<td width="15%">
							<span id="delit" class="fa cpdel" onclick="del_fun(this,<?php echo $it['id']; ?> ,'items',<?php echo $_GET['mcat'];?>,<?php echo $_GET['subcat'];?>,'Item',<?php echo $it['rank']; ?>,'del_it');"></span>
							<a class="fa cpedit" href="#"></a>
						</td>
					</tr>
					<?php } ?>
				</table>
			
		</div>
	</div>
</div>

<?php include 'btm.php'; ?>