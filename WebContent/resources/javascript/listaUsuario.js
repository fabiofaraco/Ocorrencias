$(document).ready(function() {
	
	$('#btnIncluirUsuario').on("click", function(){
		$('#frm').attr('action', 'usuario/cadastro');
		$('#frm').submit();
	});
	
//	----------------------------------------------------------------	
	
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

//	----------------------------------------------------------------	
	
	$('.btn-alterar-usuario').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$('#frm').attr('action', 'usuario/carregar?id='+id);
		$('#frm').submit();
	});
	
//	----------------------------------------------------------------	
	
	$('.btn-excluir-usuario').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$('.btn-realiza-exclusao-usuario').attr('data-id-usuario', id);
		$('#modal-excluir-usuario').modal('show');
	});
	
	
//	----------------------------------------------------------------
	
	$('.btn-realiza-exclusao-usuario').on("click", function(){
		var id = $(this).attr('data-id-usuario');
		$('#frm').attr('action', 'usuario/remover?id='+id);
		$('#frm').submit();
	});
	
//	----------------------------------------------------------------
});