<?php include 'top.php'; ?>

<div class="cp-col2">
	<div class="cp-body">
		<div class="header">Body Home Categories</div>
		<div class="title cf">
			Create Sub-Category
		</div>
		<form action="up_subcat.php?mcat=<?php echo $_GET['mcat'];?>" method="POST">
			<div class="cp-contents">
				<div class="cat-box">
					Sub-Category Name: <input type="text" name="subcat_name">
					<input type="submit" value="Create">
				</div>
			</div>
		</form>
	</div>
</div>

<?php include 'btm.php'; ?>