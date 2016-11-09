$(document).ready(function() {
	$('#btnIncluir').on("click", function(){
		$('#frm').attr('action', 'cadastroRequerente');
		$('#frm').submit();
	});
});