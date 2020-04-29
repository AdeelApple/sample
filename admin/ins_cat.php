<?php include 'top.php'; ?>

<div class="cp-col2">
	<div class="cp-body">
		<div class="header">Body Home Categories</div>
		<div class="title cf">
			Create Category
		</div>
		<form action="up_cat.php" method="POST">
			<div class="cp-contents">
				<div class="cat-box">
					Category Name: <input type="text" name="mcat_name">
					<input type="submit" value="Create">
				</div>
			</div>
		</form>
	</div>
</div>

<?php include 'btm.php'; ?>