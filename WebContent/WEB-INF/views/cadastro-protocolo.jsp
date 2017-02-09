
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head>
		<title>Cadastro de Requerentes</title>
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
					<h1>Cadastro de Protocolos</h1>
				</div>
				<c:import url="mensagem.jsp" />
				<div class="well">
					<div class="row">
						<div class="col-md-12">
				  			<label class="titulo">Dados do Requerente</label>
				  		</div>
					
				  		<div class="col-md-4">
							<div id="divNome" class="form-group">
								<label class="descricao" for="nome">CPF</label>
						  		<input type="text" class="form-control mascara-cpf" id="cpf" name="requerente.cpf" value="${protocolo.requerente.cpf}">
						  	</div>
					  	</div>
				  	</div>
				  							  	
				  	<div class="row">
				  		<div class="col-md-12">
				  			<label class="titulo">Dados da Ocorrência</label>
				  		</div>
				  	
					  	<div class="col-sm-4">
						  	<div id="divSobrenome" class="form-group">
						  		<label class="descricao" for="data">Data</label>
						  		<input type="text" class="form-control mascara-data" id="data" name="ocorrencia.data" value="${protocolo.ocorrencia.data}"/>
						  	</div>
					  	</div>
					  	
					  	<div class="col-sm-8">
						  	<div id="divSobrenome" class="form-group">
						  		<label class="descricao" for="endereco">Endereço</label>
						  		<select class="form-control" id="endereco" name="endereco">
									<option value="">Selecione...</option>
								</select>
						  	</div>
					  	</div>
				  	</div>			  	
		
				  	<hr/>
				  	<div class="row">
				  		<div class="col-md-12">
						  	<div class="form-group">
							  	<button id="btnConsultar" type="button" class="btn btn-cadastro col-md-2 col-sm-4 col-xs-12" >Consultar</button>				  	
						  	</div>
						</div>
				  	</div>
				</div>			
				<input type="hidden" class="form-control" id="id" name="id" value="${protocolo.id}"/>
				
				<input type="hidden" class="form-control" id="openModal" name="openModal" value="${openModal}"/>
				
				
				<div class="modal fade" id="modal-inserir-protocolo" role="dialog">
					<div class="modal-dialog modal-md">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h3 class="modal-title">Protocolo</h3>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-12">
							  			<label class="titulo">Dados do Requerente</label>
							  		</div>
									
									<div class="col-md-8">
										<div id="divNome" class="form-group">
											<label class="descricao" for="nome">Nome</label>
									  		<input type="text" class="form-control" id="nome" name="nome" value="${requerente.nome}">
									  	</div>
								  	</div>
								
							  		<div class="col-md-4">
										<div id="divNome" class="form-group">
											<label class="descricao" for="nome">CPF</label>
									  		<input type="text" class="form-control mascara-cpf" id="cpf" name="cpf" value="${requerente.cpf}">
									  	</div>
								  	</div>
							  	</div>
							  							  	
							  	<div class="row">
							  		<div class="col-md-12">
							  			<label class="titulo">Dados da Ocorrência</label>
							  		</div>
							  	
								  	<div class="col-md-4">
									  	<div id="divSobrenome" class="form-group">
									  		<label class="descricao" for="data">Data</label>
									  		<input type="text" class="form-control mascara-data" id="data" name="ocorrencia.data" value="${ocorrencia.data}"/>
									  	</div>
								  	</div>
								  	
								  	<div class="col-md-8">
									  	<div id="divSobrenome" class="form-group">
									  		<label class="descricao" for="natureza">Natureza</label>
									  		<input type="text" class="form-control" id="natureza" name="evento.descricao" value="${ocorrencia.evento.descricao}"/>
									  	</div>
								  	</div>
							  	</div>
							  	
							  	<div class="row">
								  	<div class="col-md-12">
									  	<div id="divSobrenome" class="form-group">
									  		<label class="descricao" for="sobrenome">Endereço</label>
									  		<input type="text" class="form-control" id="natureza" name="endereco." 
									  				value="${ocorrencia.endereco.logradouro} - ${ocorrencia.endereco.complemento} - ${ocorrencia.endereco.bairro} - ${ocorrencia.endereco.cidade.estado.sigla} - ${ocorrencia.endereco.cidade.nome}"/>
									  	</div>
								  	</div>
							  	</div>
							</div>
							<div class="modal-footer">
								<button type="button" id="btnSalvar" class="btn btn-lista btn-realiza-consulta-protocolo">Salvar</button>
								<button type="button" class="btn btn-lista" data-dismiss="modal">Fechar</button>
							</div>
							
							<input type="hidden" id="idRequerente" name="idRequerente" value="${requerente.id}"> 
							<input type="hidden" id="idOcorrencia" name="idOcorrencia" value="${ocorrencia.id}">
							
						</div>    
					</div>
				</div>
				
			</div>
		</form>
	</body>
	
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/jquery/jquery.mask.min.js"/>></script>
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/mensagem.js"/>></script>
	<script src=<c:url value="/resources/javascript/cadastroProtocolo.js"/>></script>
	<script src=<c:url value="/resources/javascript/util.js"/>></script>
</html>