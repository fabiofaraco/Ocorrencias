$(document).ready(function() {
	
	$('#btnIncluir').on("click", function(){
		$('#frm').attr('action', 'cadastroUsuario');
		$('#frm').submit();
	});
	
	$('.btn-visualizar').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$.post("carregaVisualizacao", {'id' : id}, function(data) {
			
			if(data != "") {
				var usuario = JSON.parse(data);
				$('#nome').val(usuario.nome + " " + usuario.sobrenome);
				$('#cpf').val(usuario.cpf);
				$('#email').val(usuario.email);
				$('#perfil').val(usuario.perfil.descricao);
				
				$('#view-modal').modal('show');
			}
		});
	});
	
	$('.btn-alterar').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$('#frm').attr('action', 'carregarUsuario?id='+id);
		$('#frm').submit();
	});
	
	$('.btn-excluir').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$('.btn-realiza-exclusao').attr('data-id-usuario', id);
		$('#delete-modal').modal('show');
	});
	
	$('.btn-realiza-exclusao').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$('#frm').attr('action', 'removerUsuario?id='+id);
		$('#frm').submit();
	});
});