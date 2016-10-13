<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title>Lista de Usuários</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		
		<link href=<c:url value="/resources/bootstrap/css/bootstrap.min.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/mensagem.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/lista.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/datatable/css/dataTables.bootstrap.min.css"/> rel="stylesheet"/>			
	</head>
	<body>
		<div class="container-fluid">
			<form id="frm" name="frm" method="post">
				<div class="table-responsive">          
					 <table class="table table-striped table-hover data-table">
						 <thead>
							 <tr>
								 <th>Nome</th>
								 <th>CPF</th>
								 <th>Email</th>
								 <th></th>
								 <th></th>
							 </tr>
						 </thead>
						 <tbody>
						 	<c:forEach items="${requerentes}" var="requerente">
						 		<tr>
						 			<td>${requerente.nome}</td>
						 			<td>${requerente.cpf}</td>
						 			<td>${requerente.email}</td>
						 			
						 			<td>
						 				<a href="carregarRequerente?id=${requerente.id}" class="btn btn-block btn-lista">
									    	<span class="glyphicon glyphicon-edit"></span>
				     					</a>
						 			</td>
						 			<td>
						 				<a href="removerRequerente?id=${requerente.id}" class="btn btn-block btn-lista">
									    	<span class="glyphicon glyphicon-trash"></span>
				     					</a>
						 			</td>
						 		</tr>
						 	</c:forEach>
						 </tbody>
					 </table>
				 </div>
				 
				 <button id="btnIncluir" type="button" class="btn btn-info btn-lista col-xs-12 col-sm-4 col-sm-offset-4">Incluir</button>
				 
			</form>
		</div>
	</body>
	
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/mensagem.js"/>></script>
	<script src=<c:url value="/resources/javascript/listaRequerente.js"/>></script>
	<script src=<c:url value="/resources/javascript/tabela.js"/>></script>
	<script src=<c:url value="/resources/datatable/js/jquery.dataTables.min.js"/>></script>
	<script src=<c:url value="/resources/datatable/js/dataTables.bootstrap.min.js"/>></script>
</html>