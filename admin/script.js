

$(document).ready(function() {

	if ($('#vr-checkbox').prop('checked'))
		 	$('#vari-box').show();

	$('#vr-checkbox').change(function(){
		$('#vari-box').toggle();
	});

	if ($('#mv-checkbox').prop('checked'))
		$('.more-view').show();
	
	$('#mv-checkbox').change(function(){
		$('.more-view').toggle();
	});

	
	$.each($('.enb-vr'), function( index, value ) {
	if ($(value).prop('checked'))
		$(value).parents().eq(1).children(":nth-child(2)").addClass("vrdis");
	});

	$('.enb-vr').change(function(){
		$(this).parents().eq(1).children(":nth-child(2)").toggleClass("vrdis");
	});


	


});

