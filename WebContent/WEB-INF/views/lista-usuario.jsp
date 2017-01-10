<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container-fluid">
	<div class="row">
  		<div class="col-lg-12">
			<img src="<c:url value="/resources/img/user.png"/>" width="200" height="200" data-toggle="collapse" data-target="#divUsuario" class="link-collapse">
		</div>
		<div class="col-lg-12">
			<h1 data-toggle="collapse" data-target="#divUsuario" class="link-collapse">Usuários</h1>
		</div>
	</div>
    <div class="row">
		<div id="divUsuario" class="collapse">
	    	<div class="col-lg-12">
	        	<div class="table-responsive">          
					<table class="table table-striped table-hover data-table">
						<thead>
							<tr>
								<th>Nome</th>
								<th>CPF</th>
								<th>Email</th>
								<th>Perfil</th>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${usuarios}" var="usuario">
								<tr>
								 	<td>${usuario.nome} ${usuario.sobrenome}</td>
								 	<td>${usuario.cpf}</td>
								 	<td>${usuario.email}</td>
								 	<td>${usuario.perfil.descricao}</td>
							 		<td>
						 				<a class="btn btn-block btn-visualizar" data-id-usuario="${usuario.id}">
									    	<span class="glyphicon glyphicon-search"></span>
				     					</a>
						 			</td>
						 			<td>
						 				<a class="btn btn-block btn-alterar-usuario" data-id-usuario="${usuario.id}">
									    	<span class="glyphicon glyphicon-edit"></span>
				     					</a>
						 			</td>
						 			<td>
						 				<a class="btn btn-block btn-excluir-usuario" data-id-usuario="${usuario.id}" data-toggle="modal">
									    	<span class="glyphicon glyphicon-trash"></span>
				     					</a>
						 			</td>
						 		</tr>
						 	</c:forEach>
						 </tbody>
					</table>
				</div>
				<button id="btnIncluirUsuario" type="button" class="btn btn-lista col-xs-12 col-sm-4 col-sm-offset-4">Incluir</button>
			</div>

  
			<div class="modal fade" id="modal-excluir-usuario" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h3 class="modal-title">Confirmação</h3>
						</div>
						<div class="modal-body">
							<h4>Deseja excluir o usuário selecionado?</h4>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-lista btn-realiza-exclusao-usuario">Excluir</button>
							<button type="button" class="btn btn-lista" data-dismiss="modal">Fechar</button>
						</div>
					</div>    
				</div>
			</div>
		</div>
	</div>
</div>