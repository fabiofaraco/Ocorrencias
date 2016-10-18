$(document).ready(function() {
	$('#btnSalvar').click(function(){
		if(validaCampos()) {
			$('#frm').attr('action', 'salvarUsuario');
			$('#frm').submit();
		}
	});
	
	
	
	/* FUNÇÕES */
	
	function validaCampos() {
		if($("#nome").val().trim() == "") {
			$('.msg-warning').html('Por favor insira o nome');
			$('#warning').css("display", "block");
			$("#nome").focus();
			
			return false;
		}
		
		return true;
	}
});	