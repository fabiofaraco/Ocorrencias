<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title>Cadastro de Usuários</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		
		<link href=<c:url value="/resources/bootstrap/css/bootstrap.min.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/mensagem.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/cadastro.css"/> rel="stylesheet"/>			
	</head>
	<body>
		<div class="container">
			<form id="frm" name="frm" method="post">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2>Cadastro de Usuários</h2>
					</div>
					  
					<div class="panel-body">
						<c:import url="mensagem.jsp" />
						<div class="form-group">
					  		<label class="label-control" for="nome">Nome</label>
					  		<input type="text" class="form-control" id="nome" name="nome" value="${usuario.nome}">
					  	</div>
					  	<div class="form-group">
					  		<label class="label-control" for="sobrenome">Sobrenome</label>
					  		<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${usuario.sobrenome}"/>
					  	</div>
					  	<div class="form-group">
					  		<label class="label-control" for="cpf">CPF</label>
					  		<input type="text" class="form-control" id="cpf" name="cpf" value="${usuario.cpf}"/>
					  	</div>
					  	<div class="form-group">
					  		<label class="label-control" for="email">Email</label>
					  		<input type="email" class="form-control" id="email" name="email" value="${usuario.email}"/>
					  	</div>
					  	<div class="form-group">
					  		<label class="label-control" for="perfil">Perfil</label>
					  		<select class="form-control" id="perfil" name="perfil">
							    <option value=""><c:out value="Selecione..."/></option>
							    <c:forEach items="${perfis}" var="p">
					  				<option value="${p.id}" ${usuario.perfil.id == p.id ? 'selected' : ''}><c:out value="${p.descricao}"/></option>
					  			</c:forEach>
							</select>
					  	</div>
					  	<div class="form-group">
					  		<label class="label-control" for="senha">Senha</label>
					  		<input type="password" class="form-control" id="senha" name="senha" value=""/>
					  	</div>
					  	<div class="form-group">
					  		<label class="label-control" for="confirmaSenha">Confirma Senha</label>
					  		<input type="text" class="form-control" id="confirmaSenha" name="confirmaSenha"/>
					  	</div>
					  	
					  	<hr/>
					  	
					  	<div class="btn-group btn-block">
					  		<button id="btnSalvar" type="button" class="btn btn-cadastro btn-block" >Salvar</button>
					  	</div>				  	
					</div>
					<input type="hidden" class="form-control" id="id" name="id" value="${usuario.id}"/>
				</div>
			</form>
		</div>
	</body>
	
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/mensagem.js"/>></script>
	<script src=<c:url value="/resources/javascript/cadastroUsuario.js"/>></script>
</html>