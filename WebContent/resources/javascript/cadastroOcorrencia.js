$(document).ready(function() {
	
	$('#btnSalvar').click(function(){
		if(validaCampos()) {
			$('#frm').attr('action', 'salvar');
			$('#frm').submit();
		}
	});
	
	$('#estado').on('change', function () { 
		var idEstado = $('#estado').val(); 
		
		var select = $('#cidade');			
		select.find('option').remove();
		$('<option>').val("").text("Selecione...").appendTo(select);
		
		$.post("carregaCidade", {'idEstado' : idEstado} ,function(data) {
			if(data != "") {
				$.each(JSON.parse(data), function(index, value) {
		        	$('<option>').val(value.id).text(value.nome).appendTo(select);
		        });
			}
		});
	});
        
	
	/* FUNÇÕES */
	function validaCampos() {
		/*if(!validaCampo("data", "divNome", "Nome")) {
			return false;
		}
		
		if(!validaCampo("sobrenome", "divSobrenome", "Sobrenome")) {
			return false;
		}
		
		if(!validaCampo("cpf", "divCpf", "CPF")) {
			return false;
		}
		
		if(!validaCampo("dataNascimento", "divNascimento", "Data de Nascimento")) {
			return false;
		}
		
		if(!validaCampo("email", "divEmail", "Email")) {
			return false;
		}*/
		
		return true;
	}
	
	
	
	$('#btnTesteAjax').click(function(){
		
			var json = '{"nome":"Fábio"}'
			
			$.post("testeJson", {'json' : json} ,function(data) {
				if(data != "") {
					$("#vitimas").html("");
					
					var html = ""
					
					html += '<div class="panel-group">';
						
					$.each(JSON.parse(data), function(idx, obj) {
						html += '<div class="panel panel-info">';
						html += '<div class="panel-heading">';
						html += '<h4 class="panel-title">';
						html += '<a data-toggle="collapse" href="#collapse_'+ obj.nome +'">'+ obj.nome +'</a>';
						html += '</h4>';
						html += '</div>';
						html += '<div id="collapse_'+ obj.nome +'" class="panel-collapse collapse">';
						html += '<div class="panel-body">';
						html += '<div class="row">';
						html += '<div class="col-md-6 col-sm-3">';
						html += '<div class="form-group">';
						html += '<label class="descricao" for="nome">Nome: Fábio Faraco</label>';
						html += '</div>';
						html += '</div>';

						html += '<div class="col-md-6 col-sm-3">';
						html += '<div class="form-group">';
						html += '<label class="descricao" for="nome">CPF: 152.012.597-66</label>';
						html += '</div>';
						html += '</div>';
						html += '</div>';

						html += '<div class="row">';
						html += '<div class="col-md-6 col-sm-12">';
						html += '<div class="form-group">';
						html += '<label class="descricao" for="nome">Endereço: Rua Grão pará - 405 apt 102</label>';
						html += '</div>';
						html += '</div>';

						html += '<div class="col-md-6 col-sm-3">';
						html += '<div class="form-group">';
						html += '<label class="descricao" for="nome">Bairro: Engenho Novo</label>';
						html += '</div>';
						html += '</div>';
						html += '</div>';

						html += '<div class="row">';
						html += '<div class="col-md-6 col-sm-12">';
						html += '<div class="form-group">';
						html += '<label class="descricao" for="nome">Estado: Rio de Janeiro</label>';
						html += '</div>';
						html += '</div>';

						html += '<div class="col-md-4 col-sm-3">';
						html += '<div class="form-group">';
						html += '<label class="descricao" for="nome">Cidade: Rio de Janeiro</label>';
						html += '</div>';
						html += '</div>';
						html += '</div>';
						html += '</div>';

						html += '</div>';
						html += '</div>';	
					});
					
					html +='</div>';
					
					$('#vitimas').append(html);
				}
			});
			
		
	});
});