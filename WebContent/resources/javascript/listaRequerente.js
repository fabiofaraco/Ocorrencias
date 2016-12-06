$(document).ready(function() {
	$('#btnIncluirRequerente').on("click", function(){
		$('#frm').attr('action', 'cadastroRequerente');
		$('#frm').submit();
	});
});