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
		<link href=<c:url value="/resources/styles/menu-principal.css"/> rel="stylesheet"/>					
	</head>
	<body>
		<form id="frm" name="frm" method="post">
			<div class="container">
				<div class="page-header">
					<h1>Cadastro de Ocorrências</h1>
				</div>
			
				
					<ul class="nav nav-pills">
					    <li class="active"><a data-toggle="pill" href="#dadosEvento">Dados Evento</a></li>
					    <li><a data-toggle="pill" href="#endereco">Quadro de Horários</a></li>
					    <li><a data-toggle="pill" href="#endereco">Ação de Socorro</a></li>
					    <li><a data-toggle="pill" href="#endereco">Responsável</a></li>
					</ul>
					
					<div class="tab-content">
						<div id="dadosEvento" class="tab-pane fade in active">
							<div class="well">
								<div class="form-group">
							  		<label class="titulo" for="residencial">OBM</label>
							  	</div>
							
								<div class="row">
							  		<div class="col-md-2 col-sm-3">
										<div class="form-group">
											<label class="descricao" for="nome">Unidade</label>
									  		<input type="text" class="form-control" id="nome" name="nome" value="${usuario.nome}">
									  	</div>
								  	</div>
								  	<div class="col-md-4 col-sm-6">
									  	<div class="form-group">
									  		<label class="descricao" for="sobrenome">Bairro</label>
									  		<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${usuario.sobrenome}"/>
									  	</div>
								  	</div>
							  	</div>
							  	
							  	<div class="form-group">
							  		<label class="titulo" for="residencial">Dados do Evento</label>
							  	</div>
							  	
							  	<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label class="descricao" for="perfil">Principal Evento</label>
									  		<select class="form-control" id="perfil" name="perfil">
											    <option value=""><c:out value="Selecione..."/></option>
											    <c:forEach items="${perfis}" var="p">
									  				<option value="${p.id}" ${usuario.perfil.id == p.id ? 'selected' : ''}><c:out value="${p.descricao}"/></option>
									  			</c:forEach>
											</select>
										</div>
									</div>
									
									<div class="col-xs-6 col-md-3 col-sm-6">
									  	<div class="form-group">
									  		<label class="descricao" for="sobrenome">Vítimas Fatais</label>
									  		<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${usuario.sobrenome}"/>
									  	</div>
								  	</div>
								  	
								  	<div class="col-xs-6 col-md-3 col-sm-6">
									  	<div class="form-group">
									  		<label class="descricao" for="sobrenome">Vítimas Não Fatais</label>
									  		<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${usuario.sobrenome}"/>
									  	</div>
								  	</div>
								</div>
								
								<div class="row">
									<div class="col-md-6">
									  	<div class="form-group">
									  		<label class="descricao" for="sobrenome">Chefe da Equipe</label>
									  		<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${usuario.sobrenome}"/>
									  	</div>
								  	</div>
								</div>
								
								<div class="row">
									<div class="col-md-5">
									  	<div class="form-group">
									  		<label class="descricao" for="sobrenome">Espécie do Bem</label>
									  		<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${usuario.sobrenome}"/>
									  	</div>
								  	</div>
								  	
								  	<div class="col-md-5">
									  	<div class="form-group">
									  		<label class="descricao" for="sobrenome">Finalidade do Bem</label>
									  		<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${usuario.sobrenome}"/>
									  	</div>
								  	</div>
								</div>
								
								<div class="form-group">
							  		<label class="titulo" for="residencial">Local do Evento</label>
							  	</div>
							  	
							  	<div class="row">
							  		<div class="col-md-4 col-sm-4">
							  			<div class="form-group">
									  		<label class="descricao" for="cidade">Logradouro</label>
									  		<input type="text" class="form-control" id="cidade" name="cidade" value="${requerente.endereco.cidade}"/>
									  	</div>
							  		</div>
							  		
							  		<div class="col-md-4 col-sm-4">
							  			<div class="form-group">
									  		<label class="descricao" for="cidade">Bairro</label>
									  		<input type="text" class="form-control" id="bairro" name="bairro" value="${requerente.endereco.bairro}"/>
									  	</div>
							  		</div>
							  		
							  		<div class="col-md-4 col-sm-4">
							  			<div class="form-group">
									  		<label class="descricao" for="cidade">Município</label>
									  		<input type="text" class="form-control" id="bairro" name="bairro" value="${requerente.endereco.bairro}"/>
									  	</div>
							  		</div>
							  	</div>
							  	
							</div>
						</div>
						
						<div id="endereco" class="tab-pane fade in active">
						
						</div>
						
					</div>
				</div>
							
		</form>
	</body>
	
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/jquery/jquery.mask.min.js"/>></script>
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/cadastroOcorrencia.js"/>></script>
</html>