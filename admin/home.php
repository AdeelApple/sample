<?php include 'top.php'; ?>

<div class="cp-col2">
	<div class="cp-body">
		<div class="header">
			<a href="home.php">Categories</a>
		</div>
		<div class="c-menu">
			<a href="ins_cat.php"><div class="btn">Add New</div></a>
		</div>
		<div class="title cf">
			<table width="100%"  class="h-table">
				<thead>
					<th width="5%" >#</th>
					<th width="60%">Category</th>
					<th width="10%">Rank</th>
					<th width="10%">Published</th>
					<th width="15%">Delete</th>
				</thead>
			</table>
		</div>
		<div class="cp-contents">
			<form action="">
				<table class="tbl">
					<?php
					if($m_cat_rs = mysqli_query($conn,"select* from m_cat")) 
					while($mcat = mysqli_fetch_array($m_cat_rs)){ ?>
					<tr>
						<td width="5%" ><?php echo $mcat['id']; ?></td>
						<td width="60%"><a href="subcat.php?mcat=<?php echo $mcat['mcat']; ?>"><?php echo $mcat['name']; ?></a></td>
						<td width="10%"><input type="text" value="<?php echo $mcat['rank']; ?>"><a class="fa cprank" type="submit"></a></td>
						<td width="10%">
						<div class="pb-check">
                            <input type="checkbox" onchange="pb_slide(this,'m_cat','Category');" id="<?php echo $mcat['id']; ?>" <?php if($mcat['visible']) echo 'checked'; ?> />
                            <label for="<?php echo $mcat['id']; ?>"></label>
                        </div></td>
						<td width="15%"><span id="delit" class="fa cpdel" onclick="del_fun(this,<?php echo $mcat['id']; ?>,'m_cat',<?php echo $mcat['mcat']; ?>,'','Catagory','del_mcat');"></span></td>
					</tr>
					<?php } ?>
				</table>
			</form>
		</div>
	</div>
</div>

<?php include 'btm.php'; ?>

