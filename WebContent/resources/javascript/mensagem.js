$(document).ready(function() {
	
	if($('.msg-success').html() != '') {
		alert($('.msg-success').html());
		$('#success').css("display", "block");
	}
	
	if($('.msg-info').html() != '') {
		alert($('.msg-success').html());
		$('#info').css("display", "block");
	}
	
	if($('.msg-warning').html() != '') {
		alert($('.msg-warning').html());
		$('#warning').css("display", "block");
	}
	
	if($('.msg-danger').html() != '') {
		alert($('.msg-danger').html());
		$('#danger').css("display", "block");
	}
})
	