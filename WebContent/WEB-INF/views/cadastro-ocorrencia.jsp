<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head>
		<title>Cadastro de Ocorrências</title>
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
					<h1>Cadastro de Ocorrências</h1>
				</div>
				<c:import url="mensagem.jsp" />
				
				<div class="well">
					<div class="form-group">
				  		<label class="titulo">Dados da Ocorrência</label>
				  		
				  		<div class="row">
					  		<div id="divData" class="col-md-3 col-sm-3">
								<div class="form-group">
									<label class="descricao" for="data">Data</label>
							  		<input type="text" class="form-control mascara-data" id="data" name="data" value="<fmt:formatDate pattern="dd/MM/yyyy" value="${ocorrencia.data}"/>" />
							  	</div>
						  	</div>
						  	
						  	<div id="divNatureza" class="col-md-4 col-sm-6">
							  	<div class="form-group">
							  		<label class="descricao" for="sobrenome">Natureza da Ocorrência</label>
							  		
							  		<select class="form-control" id="evento" name="evento">
									    <option value=""><c:out value="Selecione..."/></option>
									    <c:forEach items="${eventos}" var="e">
							  				<option value="${e.id}" ${ocorrencia.evento.id == e.id ? 'selected' : ''}><c:out value="${e.descricao}"/></option>
							  			</c:forEach>
									</select>
							  	</div>
						  	</div>
					  	</div>
					  	
					  	<div class="row">
					  		<div id="divEndereco" class="col-md-5 col-sm-3">
								<div class="form-group">
									<label class="descricao" for="logradouro">Endereço</label>
							  		<input type="text" class="form-control" id="logradouro" name="endereco.logradouro" value="${ocorrencia.endereco.logradouro}">
							  	</div>
						  	</div>
						  	
						  	<div id="divComplemento" class="col-md-4 col-sm-6">
							  	<div class="form-group">
							  		<label class="descricao" for="complemento">Complemento</label>
							  		<input type="text" class="form-control" id="complemento" name="endereco.complemento" value="${ocorrencia.endereco.complemento}"/>
							  	</div>
						  	</div>
						  	
						  	<div class="col-md-3 col-sm-6">
					  			<div class="form-group">
							  		<label class="descricao" for="complemento">Bairro</label>
							  		<input type="text" class="form-control" id="complemento" name="endereco.bairro" value="${ocorrencia.endereco.bairro}"/>
							  	</div>
					  		</div>
					  	</div>
					  	
					  	
					  	<div class="row">
					  		<div class="col-md-5 col-sm-3">
								<div class="form-group">
									<label class="descricao" for="estado">Estado</label>
									
									<select class="form-control" id="estado" name="endereco.cidade.estado">
									    <option value=""><c:out value="Selecione..."/></option>
									    <c:forEach items="${estados}" var="es">
							  				<option value="${es.id}" ${ocorrencia.endereco.cidade.estado.id == es.id? 'selected' : ''}><c:out value="${es.sigla} - ${es.nome}"/></option>
							  			</c:forEach>
									</select>
							  	</div>
						  	</div>
						  	<div class="col-md-5 col-sm-6">
							  	<div class="form-group">
							  		<label class="descricao" for="cidade">Cidade</label>
							  		
							  		<select class="form-control" id="cidade" name="endereco.cidade">
									    <option value=""><c:out value="Selecione..."/></option>
									    <c:forEach items="${cidades}" var="c">
							  				<option value="${c.id}" ${ocorrencia.endereco.cidade.id == c.id? 'selected' : ''}><c:out value="${c.nome}"/></option>
							  			</c:forEach>
									</select>
							  	</div>
						  	</div>
					  	</div>
				  		
				  		<div class="row">
				  			<div class="col-md-12">
				  				<div class="form-group">
						  			<label class="descricao" for="relato">Relato dos Fatos:</label>
						  			<textarea class="form-control" rows="5" id="relato" name="relato">${ocorrencia.relato}</textarea>
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
				  	<input type="hidden" class="form-control" id="id" name="id" value="${ocorrencia.id}"/>
				</div>
			</div>
		</form>
	</body>
	
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/jquery/jquery.mask.min.js"/>></script>
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/cadastroOcorrencia.js"/>></script>
	<script src=<c:url value="/resources/javascript/util.js"/>></script>
</html>