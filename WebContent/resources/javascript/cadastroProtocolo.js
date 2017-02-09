$(document).ready(function() {
	
	if( $('#openModal').val() == "true") {
		$('#modal-inserir-protocolo').modal('show');
	}
	
	$('#data').on('change', function () { 
		var data = $('#data').val(); 
		
		var select = $('#endereco');			
		select.find('option').remove();
		$('<option>').val("").text("Selecione...").appendTo(select);
		
		$.post("carregaEndereco", {'data' : data} ,function(data) {
			if(data != "") {
				$.each(JSON.parse(data), function(index, value) {
		        	$('<option>').val(value.id).text(value.endereco.logradouro).appendTo(select);
		        });
			}
		});
	});
	
	
	$('#btnConsultar').on('click', function () { 
		var cpfRequerente = $("#cpf").val();
		var idOcorrencia  = $("#endereco").val();
		
		$('#frm').attr('action', 'consultar?idOcorrencia='+idOcorrencia+"&cpf="+cpfRequerente);
		$('#frm').submit();
	});
	
	
	$('#btnSalvar').on('click', function () { 
		var idRequerente = $("#idRequerente").val();
		var idOcorrencia = $("#idOcorrencia").val();
		
		$('#frm').attr('action', 'salvar?idRequerente='+idRequerente+"&idOcorrencia="+idOcorrencia);
		$('#frm').submit();
	});
});	
