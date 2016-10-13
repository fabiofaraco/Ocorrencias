$(document).ready(function() {
	
	$('.btn-alterar').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		alert(id);
	});
	
	$('.btn-visualizar').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$.post("carregaVisualizacao", 
			{'id' : id}, function(data) {
			alert(1);
		});
	});
	
	$('.btn-excluir').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$('.btn-realiza-exclusao').attr('data-id-usuario', id);
		$('#view-modal').modal('show');
	});
	
	$('.btn-realiza-exclusao').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$('#frm').attr('action', 'removerUsuario?id='+id);
		$('#frm').submit();
	});
});