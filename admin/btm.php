		</div>
	</div>
	<div class="cp-row bg4">
		<div class="row cp-footer">
			<h5>Copyright &copy; <?php echo date("Y"); ?>. All rights reseerved.</h5>
		</div>
	</div>
</div>
<script src="script.js"></script>
<script src="js.js"></script>

<?php 

if (isset($_SESSION['msg']))
{
	$msg = $_SESSION['msg'];
	echo "<script> popmsg('$msg'); </script>";
	unset($_SESSION['msg']);

}


	$conn->close();
?>

</body>
</html>