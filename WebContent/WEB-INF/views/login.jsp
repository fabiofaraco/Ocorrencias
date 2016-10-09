<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link href=<c:url value="/resources/bootstrap/css/bootstrap.min.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/mensagem.css"/> rel="stylesheet"/>
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
					<div class="form-group col-md-6">
						<c:import url="mensagem.jsp" />
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
				    	<input type="text" class="form-control" id="email" name="email" value="${usuario.email}" placeholder="Login">
				  	</div>
				  	
				  	<div class="form-group col-md-3">
				    	<input type="text" class="form-control" id="senha" name="senha" value="${usuario.senha}" placeholder="Senha">
				  	</div>
				  	
				  	<div class="form-group col-md-2">
				    	<button id="btnLogin" name="btnLogin" type="button" class="btn btn-success">Entrar</button>
				  	</div>
				</div>
			</form>
		</div>
	</body>
</html>
