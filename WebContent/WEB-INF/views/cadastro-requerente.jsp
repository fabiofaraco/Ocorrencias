
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
					<h1>Cadastro de Requerentes</h1>
				</div>
				<c:import url="mensagem.jsp" />
				<div class="well">
					<div class="form-group">
				  		<label class="titulo" for="residencial">Dados Pessoais</label>
				  	</div>
				  	
				  	<div class="row">
				  		<div id="divNome" class="col-md-6 col-sm-6">
							<div class="form-group">
								<label class="descricao" for="nome">Nome</label>
						  		<input type="text" class="form-control" id="nome" name="nome" value="${requerente.nome}">
						  	</div>
					  	</div>
					  	
					  	<div id="divSobrenome" class="col-md-6 col-sm-6">
						  	<div class="form-group">
						  		<label class="descricao" for="sobrenome">Sobrenome</label>
						  		<input type="text" class="form-control" id="sobrenome" name="sobrenome" value="${requerente.sobrenome}"/>
						  	</div>
					  	</div>
				  	</div>
				  	
				  	<div class="row">
				  		<div id="divCpf" class="col-md-3 col-sm-3">
				  			<div class="form-group">
						  		<label class="descricao" for="cpf">CPF</label>
						  		<input type="text" class="form-control mascara-cpf" id="cpf" name="cpf" value="${requerente.cpf}"/>
						  	</div>
				  		</div>
				  		
				  		<div id="divNascimento" class="col-md-4 col-sm-3">
						  	<div class="form-group">
						  		<label class="descricao" for="dataNascimento">Nascimento</label>
						  		<input type="text" class="form-control mascara-data" id="dataNascimento" name="dataNascimento" value="<fmt:formatDate pattern="dd/MM/yyyy" value="${requerente.dataNascimento}"/>" />
						  	</div>
				  		</div>
				  		
				  		<div id="divEmail" class="col-md-5 col-sm-6">
				  			<div class="form-group">
						  		<label class="descricao" for="email">Email</label>
						  		<input type="email" class="form-control" id="email" name="email" value="${requerente.email}"/>
						  	</div>
				  		</div>
				  	</div>
				  	
				  	<div class="form-group">
				  		<label class="titulo" for="residencial">Endereço</label>
				  	</div>
				  	
				  	<div class="row">
					  		<div id="divEndereco" class="col-md-5 col-sm-3">
								<div class="form-group">
									<label class="descricao" for="logradouro">Endereço</label>
							  		<input type="text" class="form-control" id="logradouro" name="endereco.logradouro" value="${requerente.endereco.logradouro}">
							  	</div>
						  	</div>
						  	
						  	<div id="divComplemento" class="col-md-4 col-sm-6">
							  	<div class="form-group">
							  		<label class="descricao" for="complemento">Complemento</label>
							  		<input type="text" class="form-control" id="complemento" name="endereco.complemento" value="${requerente.endereco.complemento}"/>
							  	</div>
						  	</div>
						  	
						  	<div id="divBairro" class="col-md-3 col-sm-6">
					  			<div class="form-group">
							  		<label class="descricao" for="bairro">Bairro</label>
							  		<input type="text" class="form-control" id="bairro" name="endereco.bairro" value="${requerente.endereco.bairro}"/>
							  	</div>
					  		</div>
					  	</div>
				  	
				  	<div class="row">
					  		<div class="col-md-5 col-sm-3">
								<div id="divEstado" class="form-group">
									<label class="descricao" for="estado">Estado</label>
									
									<select class="form-control" id="estado" name="endereco.cidade.estado">
									    <option value=""><c:out value="Selecione..."/></option>
									    <c:forEach items="${estados}" var="es">
							  				<option value="${es.id}" ${requerente.endereco.cidade.estado.id == es.id? 'selected' : ''}><c:out value="${es.sigla} - ${es.nome}"/></option>
							  			</c:forEach>
									</select>
							  	</div>
						  	</div>
						  	<div class="col-md-5 col-sm-6">
							  	<div id="divCidade" class="form-group">
							  		<label class="descricao" for="cidade">Cidade</label>
							  		
							  		<select class="form-control" id="cidade" name="endereco.cidade">
									    <option value=""><c:out value="Selecione..."/></option>
									    <c:forEach items="${cidades}" var="c">
							  				<option value="${c.id}" ${requerente.endereco.cidade.id == c.id? 'selected' : ''}><c:out value="${c.nome}"/></option>
							  			</c:forEach>
									</select>
							  	</div>
						  	</div>
					  	</div>
				  	
				  	<div class="form-group">
				  		<label class="titulo" for="telefone">Telefone</label>
				  	</div>
				  	
				  	<div class="row">
				  		<div class="col-md-3 col-sm-6">
				  			<div id="divResidencial" class="form-group">
						  		<label class="descricao" for="residencial">Residencial</label>
						  		<input type="text" class="form-control mascara-telefone" id="residencial" name="telefone.residencial" value="${requerente.telefone.residencial}"/>
						  	</div>
				  		</div>
				  		
				  		<div class="col-md-3 col-sm-6">
				  			<div id="divCelular" class="form-group">
						  		<label class="descricao" for="celular">Celular</label>
						  		<input type="text" class="form-control mascara-celular" id="celular" name="telefone.celular" value="${requerente.telefone.celular}"/>
						  	</div>
				  		</div>
				  	</div>
				  	<hr/>
				  	<div class="row">
				  		<div class="col-md-12">
						  	<div class="form-group">
							  	<button id="btnSalvar" type="button" class="btn btn-cadastro col-md-2 col-sm-4 col-xs-12" >Salvar</button>				  	
						  	</div>
						</div>
				  	</div>
				</div>			
				<input type="hidden" class="form-control" id="id" name="id" value="${requerente.id}"/>
			</div>
		</form>
	</body>
	
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/jquery/jquery.mask.min.js"/>></script>
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/mensagem.js"/>></script>
	<script src=<c:url value="/resources/javascript/cadastroRequerente.js"/>></script>
	<script src=<c:url value="/resources/javascript/util.js"/>></script>
</html>