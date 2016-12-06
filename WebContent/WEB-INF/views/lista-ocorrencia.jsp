<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title>Lista de Ocorrências</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		
		<link href=<c:url value="/resources/bootstrap/css/bootstrap.min.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/menu-principal.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/mensagem.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/lista.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/datatable/css/dataTables.bootstrap.min.css"/> rel="stylesheet"/>			
	</head>
	<body>
		<form id="frm" name="frm" method="post">
			<c:import url="menu.jsp" />
			<div class="container-fluid">
				<div class="page-header">
					<h1>Lista de Ocorrências</h1>
				</div>
				<c:import url="mensagem.jsp" />
				<div class="table-responsive">          
					 <table class="table table-striped table-hover data-table">
						 <thead>
							 <tr>
								 <th>Nº Ocorrência</th>
								 <th>Principal Evento</th>
								 <th>Endereço</th>
								 <th></th>
								 <th></th>
								 <th></th>
							 </tr>
						 </thead>
						 <tbody>
						 	<c:forEach items="" var="evento">
						 		<tr>
						 			<td></td>
						 			<td></td>
						 			<td></td>
						 			<td>
						 				<a class="btn btn-block btn-visualizar" data-id-ocorrencia="">
									    	<span class="glyphicon glyphicon-search"></span>
				     					</a>
						 			</td>
						 			<td>
						 				<a class="btn btn-block btn-alterar" data-id-ocorrencia="">
									    	<span class="glyphicon glyphicon-edit"></span>
				     					</a>
						 			</td>
						 			<td>
						 				<a class="btn btn-block btn-excluir" data-id-ocorrencia="">
									    	<span class="glyphicon glyphicon-trash"></span>
				     					</a>
						 			</td>
						 		</tr>
						 	</c:forEach>
						 </tbody>
					 </table>
				 </div>
				 
				 <button id="btnIncluir" type="button" class="btn btn-lista col-xs-12 col-sm-4 col-sm-offset-4">Incluir</button>
				 
				 <div class="modal fade" id="delete-modal" role="dialog">
					<div class="modal-dialog  modal-sm">
						<div class="modal-content alert">
							<div class="modal-body">
								<label class="label-control">Confirma Exclusão?</label>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-lista btn-realiza-exclusao">Sim</button>
								<button type="button" class="btn btn-lista" data-dismiss="modal">Não</button>
							</div>
						</div>
					</div>
				</div>
				
				<div class="modal fade" id="view-modal" role="dialog">
					<div class="modal-dialog">
      					<div class="modal-content">
        					<div class="modal-header">
					        	<button type="button" class="close" data-dismiss="modal">&times;</button>
					        	<h3>Visualizar</h3>
        					</div>
        					<div class="modal-body">
        						<div class="form-group ">
              						<label for="nome" class="control-label">Nome</label>
              						<input type="text" id="nome" name="nome" class="form-control" disabled="disabled"/>
              					</div>
              					
              					<div class="form-group">
              						<label for="cpf" class="label-control">CPF</label>
              						<input type="text" id="cpf" name="cpf" class="form-control" disabled="disabled"/>
              					</div>
              					<div class="form-group">
              						<label for="email" class="label-control">Email</label>
              						<input type="text" id="email" name="email" class="form-control" disabled="disabled"/>
              					</div>
              					<div class="form-group">
              						<label for="perfil" class="label-control">Nascimento</label>
              						<input type="text" id="dataNascimento" name="dataNascimento" class="form-control" disabled="disabled"/>
              					</div>
        					</div>
        					<div class="modal-footer">
           						<button type="button" class="btn btn-lista btn-block" data-dismiss="modal">Fechar</button>
           					</div>
      					</div>
    				</div>
				</div>
			</div>
		</form>
	</body>
	
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/mensagem.js"/>></script>
	<script src=<c:url value="/resources/javascript/listaRequerente.js"/>></script>
	<script src=<c:url value="/resources/javascript/tabela.js"/>></script>
	<script src=<c:url value="/resources/datatable/js/jquery.dataTables.min.js"/>></script>
	<script src=<c:url value="/resources/datatable/js/dataTables.bootstrap.min.js"/>></script>
</html>