<?php include 'top.php'; ?>

<div class="cp-col2">
	<div class="cp-body">
		<div class="header">Settings</div>
		<div class="title_s cf">
			<table width="100%"  class="h-table">
				<thead>
					<th width="20%">Value</th>
					<th width="80%">Status</th>
				</thead>
			</table>
		</div>
		<div class="cp-contents">
			<table class="tbl">
				<tr>
					<td width="20%">Slider</td>
					<td width="80%"><input type="checkbox" onchange="set_bit(this,'setting','slider','Slider');" <?php if($crl) echo "checked"; ?>></td>
				</tr>
			</table>
		</div>
	</div>
</div>

<?php include 'btm.php'; ?>