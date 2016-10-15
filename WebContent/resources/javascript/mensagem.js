$(document).ready(function() {
	
	if($('.msg-success').html() != '') {
		$('#success').css("display", "block");
	}
	
	if($('.msg-info').html() != '') {
		$('#info').css("display", "block");
	}
	
	if($('.msg-warning').html() != '') {
		$('#warning').css("display", "block");
	}
	
	if($('.msg-danger').html() != '') {
		$('#danger').css("display", "block");
	}
	
	$('.close').click(function(){
	//	$('.alert').css("display", "none");
	});
})
	