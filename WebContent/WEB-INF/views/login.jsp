<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link href=<c:url value="/resources/bootstrap/css/bootstrap.min.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/mensagem.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/login.css"/> rel="stylesheet"/>
		<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
		<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
		<script src=<c:url value="/resources/javascript/login.js"/>></script>
		<script src=<c:url value="/resources/javascript/mensagem.js"/>></script>
		<title>Login</title>
	</head>
	<body>
		<div class="container">
			<form id="frm" name="frm" method="post">
				<div class="row">
					<div class="form-group col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
						<h1>Sistema Gerenciador de Ocorrências</h1>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
						<c:import url="mensagem.jsp" />
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
				    	<input type="text" class="form-control" id="email" name="email" value="${usuario.email}" placeholder="Login">
				  	</div>
				</div>
				
				<div class="row">
					<div class="form-group col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
						<input type="text" class="form-control" id="senha" name="senha" value="${usuario.senha}" placeholder="Senha">
				  	</div>
				  	<div class="form-group col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
				  		<label class="checkbox-inline" ><input id="chkLembrar" type="checkbox" value="">Lembrar-me</label>
				  	</div>
				  	
				</div>
				
				<div class="row">
					<div class="form-group col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
				    	<button id="btnLogin" name="btnLogin" type="button" class="btn btn-primary btn-block">Entrar</button>
				  	</div>
				</div>
				
				<div class="row">
					<div class="form-group">
				    	<button id="btnEsqueceuSenha" name="btnEsqueceuSenha" type="button" class="btn btn-link btn-block">Esqueci minha senha</button>
				  	</div>
				</div>
				
				<div class="row">
					<div class="form-group col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
				    	<button id="btnGerarCertidao" name="btnGerarCertidao" type="button" class="btn btn-info btn-block">Imprimir Certidão</button>
				  	</div>
				</div>
				
				<div class="row">
					<div class="form-group col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
				    	<button id="btnAutenticacao" name="btnAutenticacao" type="button" class="btn btn-info btn-block">Verificar Autenticidade</button>
				  	</div>
				</div>
			</form>
		</div>
	</body>
</html>
