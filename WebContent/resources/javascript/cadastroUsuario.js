$(document).ready(function() {
	$("#cpf").mask("999.999.999-99");
	
	$("#cpf").keypress(function (e) {
		if(e.which != 8 
				&& e.which != 0 
				&& (e.which < 48 || e.which > 57)) {
			return false;
		}
	});
	
	$("#cpf").focusout(function(){
		if($("#cpf").val() != "") {
			if(validaCPF($('#cpf').val())) {
				$.post("usuario/validaCpf", {'cpf' : $("#cpf").val(), 'id' : $("#id").val()} ,function(data) {
					if(data != "") {
						$('.msg-warning').html('O CPF digitado já está cadastrado no sistema');
						$('#warning').css("display", "block");
						$("#cpf").val("");
						$("#divCpf").addClass("has-error has-feedback")
					} else {
						$('#warning').css("display", "none");
						$("#divCpf").removeClass("has-error has-feedback")
					}
				});
			} else {
				$('.msg-warning').html('Por favor digite um CPF válido');
				$('#warning').css("display", "block");
				$("#cpf").focus();
				$("#divCpf").addClass("has-error has-feedback")
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
		$("#divNome").removeClass("has-error has-feedback");
		$("#divSobrenome").removeClass("has-error has-feedback");
		$("#divCpf").removeClass("has-error has-feedback");
		$("#divEmail").removeClass("has-error has-feedback");
		$("#divPerfil").removeClass("has-error has-feedback");
		$("#divSenha").removeClass("has-error has-feedback");
		$("#divConfirmaSenha").removeClass("has-error has-feedback");
		
		if($("#nome").val().trim() == "") {
			$('.msg-warning').html('Por favor insira o nome');
			$('#warning').css("display", "block");
			$("#nome").focus();
			$("#divNome").addClass("has-error has-feedback")
			
			return false;
		}
				
		if($("#sobrenome").val().trim() == "") {
			$('.msg-warning').html('Por favor insira o sobrenome');
			$('#warning').css("display", "block");
			$("#sobrenome").focus();
			$("#divSobrenome").addClass("has-error has-feedback")
			
			return false;
		}
		
		if($("#cpf").val().trim() == "") {
			$('.msg-warning').html('Por favor insira o cpf');
			$('#warning').css("display", "block");
			$("#sobrenome").focus();
			$("#divCpf").addClass("has-error has-feedback")
			
			return false;
		}
		
		if(!validaCPF($("#cpf").val())) {
			$('.msg-warning').html('Por favor insira um cpf válido');
			$('#warning').css("display", "block");
			$("#cpf").focus();
			$("#divCpf").addClass("has-error has-feedback")
			
			return false;
		}
		
		if($("#email").val().trim() == "") {
			$('.msg-warning').html('Por favor insira o Email');
			$('#warning').css("display", "block");
			$("#email").focus();
			$("#divEmail").addClass("has-error has-feedback")
			
			return false;
		}
		
		if($("#perfil").val().trim() == "") {
			$('.msg-warning').html('Por favor insira o Perfil');
			$('#warning').css("display", "block");
			$("#perfil").focus();
			$("#divPerfil").addClass("has-error has-feedback")
			
			return false;
		}
		
		if($("#senha").val().trim() == "") {
			$('.msg-warning').html('Por favor insira o Senha');
			$('#warning').css("display", "block");
			$("#senha").focus();
			$("#divSenha").addClass("has-error has-feedback")
			
			return false;
		}
		
		if($("#senha").val().trim().length < 6 || $("#senha").val().trim().length > 10) {
			$('.msg-warning').html('A senha deve possuir no mínimo 6 e no máximo 10 digitos');
			$('#warning').css("display", "block");
			$("#senha").focus();
			$("#divSenha").addClass("has-error has-feedback")
			
			return false;
		}
		
		if($("#confirmaSenha").val().trim() == "") {
			$('.msg-warning').html('Por favor Confirme a Senha');
			$('#warning').css("display", "block");
			$("#confirmaSenha").focus();
			$("#divConfirmaSenha").addClass("has-error has-feedback")
			
			return false;
		}
		
		if($("#senha").val() != $("#confirmaSenha").val()) {
			$('.msg-warning').html('Senhas não conferem! Digite novamente.');
			$('#warning').css("display", "block");
			$("#senha").focus();
			$("#senha").val("");
			$("#confirmaSenha").val("");
			$("#divSenha").addClass("has-error has-feedback")
			
			return false;
		}
		
		return true;
	}
	
	function validaCPF(cpf) { 
		strCPF = cpf; 
		strCPF = strCPF.replace(/[^\d]+/g,''); 
	
		var Soma; 
		var Resto; 
		var cboll = true; 
		Soma = 0; 
	
		if (strCPF.length != 11 
				|| strCPF == "00000000000" 
				|| strCPF == "11111111111" 
				|| strCPF == "22222222222" 
				|| strCPF == "33333333333" 
				|| strCPF == "44444444444" 
				|| strCPF == "55555555555" 
				|| strCPF == "66666666666" 
				|| strCPF == "77777777777" 
				|| strCPF == "88888888888" 
				|| strCPF == "99999999999") {
			cboll = false;
		}  
		 
		for (i=1; i<=9; i++) {
			Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (11 - i); 
		}
		
		Resto = (Soma * 10) % 11; 
	
		if ((Resto == 10) || (Resto == 11)) {
			Resto = 0; 
		}
		
		if (Resto != parseInt(strCPF.substring(9, 10)) ) {
			cboll = false; 
		}
	
		Soma = 0; 
		for (i = 1; i <= 10; i++) {
			Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (12 - i); 
		}
		
		Resto = (Soma * 10) % 11; 
	
		if ((Resto == 10) || (Resto == 11)) {
			Resto = 0; 
		}
		
		if (Resto != parseInt(strCPF.substring(10, 11) ) ) {
			cboll = false; 
		}
	
		return cboll;
	}
});	