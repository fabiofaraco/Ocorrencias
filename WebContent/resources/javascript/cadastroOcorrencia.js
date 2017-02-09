$(document).ready(function() {
	
	$('#btnSalvar').click(function(){
		//if(validaCampos()) {
			$('#frm').attr('action', 'salvar');
			$('#frm').submit();
		//}
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
});