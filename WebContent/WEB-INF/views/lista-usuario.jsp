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
						 				<a class="btn btn-block btn-alterar" data-id-usuario="${usuario.id}">
									    	<span class="glyphicon glyphicon-edit"></span>
				     					</a>
						 			</td>
						 			<td>
						 				<a class="btn btn-block btn-excluir" data-id-usuario="${usuario.id}">
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
		</div>
	</div>
</div>