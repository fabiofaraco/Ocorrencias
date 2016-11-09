<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title>Cadastro de Ocorrências</title>
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
						<h2>Cadastro de Ocorrências</h2>
					</div>
					  
					<div class="panel-body">
						<c:import url="mensagem.jsp" />
						
						<div class="form-group">
					  		<label class="label-control" for="unidade">Unidade</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="principalEvento">Principal Evento</label>
					  		<select class="form-control" id="principalEvento" name="principalEvento">
							    <option value=""><c:out value="Selecione..."/></option>
							    <c:forEach items="${eventos}" var="e">
					  				<option value="${e.id}" ${ocorrencia.principalEvento.id == e.id ? 'selected' : ''}><c:out value="${e.descricao}"/></option>
					  			</c:forEach>
							</select>
					  	</div>
					  	
					  	<div class="form-group">
					  		<h3>Vítimas</h3>
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="fatais">Fatais</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Não Fatais</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Chefe da Equipe</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Recebimento do Aviso</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Saída da Unidade</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Chegada ao Local</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Retorno à Unidade</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Logradouro</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Bairro</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Município</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="naoFatais">Espécie do Bem</label>
					  		<input type="text" class="form-control" id="unidade" name="unidade" value="${ocorrencia.unidade}">
					  	</div>
					  	
					  	<div class="form-group">
					  		<label class="label-control" for="principalEvento">Finalidade do Bem</label>
					  		<select class="form-control" id="principalEvento" name="principalEvento">
							    <option value=""><c:out value="Selecione..."/></option>
							    <c:forEach items="${finalidades}" var="f">
					  				<option value="${f.id}" ${ocorrencia.finalidadeBem.id == f.id ? 'selected' : ''}><c:out value="${f.descricao}"/></option>
					  			</c:forEach>
							</select>
					  	</div>
					  	
					  	<hr/>
					  	
					  	<div class="btn-group btn-block">
					  		<button id="btnSalvar" type="button" class="btn btn-cadastro btn-block" >Salvar</button>
					  	</div>				  	
					</div>
					<input type="hidden" class="form-control" id="id" name="id" value="${requerente.id}"/>
				</div>
			</form>
		</div>
	</body>
	
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/jquery/jquery.mask.min.js"/>></script>
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/mensagem.js"/>></script>
	<script src=<c:url value="/resources/javascript/cadastroRequerente.js"/>></script>
</html>