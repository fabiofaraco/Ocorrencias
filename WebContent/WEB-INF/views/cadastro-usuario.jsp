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
		<link href=<c:url value="/resources/styles/menu-principal.css"/> rel="stylesheet"/>			
	</head>
	<body>
		<form id="frm" name="frm" method="post">
		
		<div class="container">
			<div class="page-header">
				<h1>Cadastro de Usuários</h1>
			</div>
			<c:import url="mensagem.jsp" />
			<div class="well">
				<div class="form-group">
			  		<label class="titulo" for="residencial">Dados Pessoais</label>
			  	</div>
			
				<div class="row">
			  		<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<label class="descricao" for="nome">Nome</label>
					  		<input type="text" class="form-control" id="nome" name="nome" value="${usuario.nome}">
					  	</div>
				  	</div>
				  	<div class="col-md-6 col-sm-6">
					  	<div class="form-group">
					  		<label class="descricao" for="sobrenome">Sobrenome</label>
					  		<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${usuario.sobrenome}"/>
					  	</div>
				  	</div>
			  	</div>
				
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="form-group">
							<label class="descricao" for="cpf">CPF</label>
					  		<input type="text" class="form-control" id="cpf" name="cpf" value="${usuario.cpf}"/>
				  		</div>
					</div>
					<div class="col-md-5 col-sm-5">
						<div class="form-group">
							<label class="descricao" for="email">Email</label>
					  		<input type="email" class="form-control" id="email" name="email" value="${usuario.email}"/>
						</div>
					</div>
				</div>
				
			  	<div class="row">
					<div class="col-md-4 col-sm-5">
						<div class="form-group">
							<label class="descricao" for="perfil">Perfil</label>
					  		<select class="form-control" id="perfil" name="perfil">
							    <option value=""><c:out value="Selecione..."/></option>
							    <c:forEach items="${perfis}" var="p">
					  				<option value="${p.id}" ${usuario.perfil.id == p.id ? 'selected' : ''}><c:out value="${p.descricao}"/></option>
					  			</c:forEach>
							</select>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="form-group">
							<label class="descricao" for="senha">Senha</label>
							<input type="password" class="form-control" id="senha" name="senha" value=""/>
						</div>
					</div>
					
					<div class="col-md-4 col-sm-4">
						<div class="form-group">
							<label class="descricao" for="confirmaSenha">Confirma Senha</label>
							<input type="password" class="form-control" id="confirmaSenha" name="confirmaSenha" value=""/>
						</div>
					</div>
				</div>
				
		  		<div class="row">
		  			<div class="col-md-12">
				  	  	<div class="form-group">
						  	<button id="btnSalvar" type="button" class="btn btn-cadastro col-md-2 col-sm-4 col-xs-12" >Salvar</button>				  	
					  	</div>
				  	</div>
			  	</div>
			</div>
			
			<input type="hidden" class="form-control" id="id" name="id" value="${usuario.id}"/>		
		</div>
		</form>
	</body>
	
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/mensagem.js"/>></script>
	<script src=<c:url value="/resources/javascript/cadastroUsuario.js"/>></script>
</html>