$(document).ready(function() {
	$('#btnIncluirRequerente').on("click", function(){
		$('#frm').attr('action', 'requerente/cadastro');
		$('#frm').submit();
	});
	
//	----------------------------------------------------------------
	
	$('.btn-alterar-requerente').on("click", function(){
		var id = $(this).attr('data-id-requerente');
		$('#frm').attr('action', 'requerente/carregar?id='+id);
		$('#frm').submit();
	});
	
//	----------------------------------------------------------------
	
	$('.btn-excluir-requerente').on("click", function(){
		var id = $(this).attr('data-id-requerente');
		
		$('.btn-realiza-exclusao-requerente').attr('data-id-requerente', id);
		$('#modal-excluir-requerente').modal('show');
	});

//	----------------------------------------------------------------
	
	$('.btn-realiza-exclusao-requerente').on("click", function(){
		var id = $(this).attr('data-id-requerente');
		
		$('#frm').attr('action', 'requerente/remover?id='+id);
		$('#frm').submit();
	});
});