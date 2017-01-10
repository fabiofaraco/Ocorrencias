$(document).ready(function() {
	
	$("#cpf").focusout(function(){
		if($("#cpf").val() != "") {
			if(validaCPF($('#cpf').val())) {
				$.post("validaCpf", {'cpf' : $("#cpf").val(), 'id' : $("#id").val()} ,function(data) {
					if(data != "") {
						$("#divCpf").realizaCritica({
						      'mensagem' : 'O CPF digitado já está cadastrado no sistema',
						      'field' : "cpf"
						      	 
						 });
					} else {
						$("#divCpf").limparCritica();
						
					}
				});
			} else {
				$("#divCpf").realizaCritica({
				      'mensagem' : 'Por favor, digite um CPF válido',
				      'field' : "cpf" 
				 });
				
				  $("#cpf").attr("placeholder", "Por favor, digite um CPF válido");
			}
		}
    });	
	
	$('#btnSalvar').click(function(){
		
		if(validaCampos()) {
			$('#frm').attr('action', 'salvar');
			$('#frm').submit();
		}
	});
	
	/* FUNÇÕES */
	function validaCampos() {
		
		
		return true;
	}
});


