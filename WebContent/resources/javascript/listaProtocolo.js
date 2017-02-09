$(document).ready(function() {
	$('#btnIncluirProtocolo').on("click", function(){
		$('#frm').attr('action', 'protocolo/cadastro');
		$('#frm').submit();
	});
	
	$('#data').on('change', function () { 
		var data = $('#data').val(); 
		
		var select = $('#endereco');			
		select.find('option').remove();
		$('<option>').val("").text("Selecione...").appendTo(select);
		
		$.post("protocolo/carregaEndereco", {'data' : data} ,function(data) {
			if(data != "") {
				$.each(JSON.parse(data), function(index, value) {
		        	$('<option>').val(value.id).text(value.endereco.logradouro).appendTo(select);
		        });
			}
		});
	});
});