<?php include 'top.php'; ?>

<div class="cp-col2">
	<div class="cp-body">
		<div class="header">Slider Images</div>
		<div class="c-menu">
			<a href="crl_edit.php"><div class="btn addbtn">Add New Image</div></a>
		</div>
		<div class="title cf">
			<table width="100%" class="h-table">
				<thead>
					<th width="5%" >#</th>
					<th width="60%">Name</th>
					<th width="10%">Rank</th>
					<th width="10%">Published</th>
					<th width="15%">Delete</th>
				</thead>
			</table>
		</div>
		<div class="cp-contents">
			<table class="tbl">
				<?php
					if($rs = mysqli_query($conn,"select* from slider order by rank")){
					while($it = mysqli_fetch_array($rs)){
				?>
				<tr>
					<td width="5%" ><?php echo $it['rank']; ?></td>
					<td width="60%"><a href="crl_edit.php?data=<?php echo $it['id'];?>&name=<?php echo $it['name']; ?>"><?php echo $it['name']; ?></a></td>
					<td width="10%" align="center">
							<form method="post" action="do_sr_slider.php">
								<input class="rinp" type="number" name="nrank" value="<?php echo $it['rank']; ?>">
								<input type="hidden" name="orank" value="<?php echo $it['rank']; ?>">
								<input type="hidden" name="id" value="<?php echo $it['id']; ?>">
								<input style="width: 20px; display: none;" type="submit" value="go" />
							</form>
						</td>
					<td width="10%">
					<div class="pb-check">
                        <input type="checkbox" onchange="pb_slide(this,'slider','Slide image');" id="<?php echo $it['id']; ?>" <?php if($it['visible']) echo 'checked'; ?> />
                        <label for="<?php echo $it['id']; ?>"></label>
                    </div>
					</td>
					<td width="15%"><div class="fa cpdel" onclick="del_item(this,<?php echo $it['id']; ?>,'slider','Image','del_image');"></div></td>
				</tr>
					<?php }} ?>
			</table>
		</div>
	</div>
</div>

<?php include 'btm.php'; ?>