<?php include 'top.php'; 

if(isset($_GET['data']))
{
	$up=1;
	$id = $_GET['data'];
	$ttl = "Edit Image";
	$name = $_GET['name'];
}else {
	$ttl = "Upload Image";	
	$up=0;
}

?>

<div class="cp-col2">
	<div class="cp-body">
		<div class="header">
			<a href="crl.php">Slider Images</a>
		</div>
		<div class="title cf">
			<?php echo $ttl; ?>
		</div>
		<div class="cp-contents">
			<div class="upload-item">
				<form method="POST" action="crl_ins.php<?php if($up)echo '?data='.$id ?>" enctype="multipart/form-data">
					<div class="up-pic">
						<fieldset>
							<legend><?php echo isset($_GET['data'])?'Update':'Upload';?> Image</legend>
							<div style="width: 100%;">				
								Name: <input type="text" name="name" value="<?php if($up)echo $name;else echo 'image' ?>">
								<?php if(!$up){ ?>
								<div  style="padding: 20px 0px; width: 100%; border: none;">
									<input type="file" name="pic" id="item_pic">
									<p>Max size = 1mb</p>
									<p>Slider image should be dimension of (1400 x 300)px </p>
								</div>
								<?php } ?>
							</div>
						</fieldset>
					</div>
					<div class="submit-it">
						<input type="submit" value=" <?php echo isset($_GET['data'])?'Update':'Upload';?> ">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<?php include 'btm.php'; ?>