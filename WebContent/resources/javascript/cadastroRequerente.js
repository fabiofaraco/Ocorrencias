$(document).ready(function() {
	$('#dataNascimento').mask('00/00/0000');
	$('#residencial').mask('(00) 0000-0000');
	$('#celular').mask('(00) 00000-0000');
	
	$('#btnSalvar').click(function(){
		alert($('#logradouro').val())
		if(validaCampos()) {
			$('#frm').attr('action', 'salvarRequerente');
			$('#frm').submit();
		}
	});
	
	/* FUNÇÕES */
	
	function validaCampos() {
		return true;
	}
});


