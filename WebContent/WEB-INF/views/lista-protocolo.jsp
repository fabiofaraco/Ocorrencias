<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container-fluid">
	<div class="row">
  		<div class="col-lg-12">
			<img src="<c:url value="/resources/img/protocolo.png"/>" width="200" height="200" data-toggle="collapse" data-target="#divProtocolo" class="link-collapse">
		</div>
		<div class="col-lg-12">
			<h1 data-toggle="collapse" data-target="#divProtocolo" class="link-collapse">Protocolo</h1>
		</div>
	</div>
	<div class="row">
		<div id="divProtocolo" class="collapse">
			<div class="col-lg-12">
				<div class="table-responsive">          
					 <table class="table table-striped table-hover data-table">
						 <thead>
							 <tr>
								 <th>Nº Protocolo</th>
								 <th>Requerente</th>
								 <th>Endereço</th>
								 <th></th>
								 <th></th>
								 <th></th>
							 </tr>
						 </thead>
						 <tbody>
						 	<c:forEach items="" var="protocolo">
						 		<tr>
						 			<td></td>
						 			<td></td>
						 			<td></td>
						 			<td>
						 				<a class="btn btn-block btn-visualizar" data-id-usuario="">
									    	<span class="glyphicon glyphicon-search"></span>
				     					</a>
						 			</td>
						 			<td>
						 				<a class="btn btn-block btn-alterar" data-id-usuario="">
									    	<span class="glyphicon glyphicon-edit"></span>
				     					</a>
						 			</td>
						 			<td>
						 				<a class="btn btn-block btn-excluir" data-id-usuario="">
									    	<span class="glyphicon glyphicon-trash"></span>
				     					</a>
						 			</td>
						 		</tr>
						 	</c:forEach>
						 </tbody>
					 </table>
				 </div>
				 <button id="btnIncluirProtocolo" type="button" class="btn btn-lista col-xs-12 col-sm-4 col-sm-offset-4">Incluir</button>
			</div>
		</div>
	</div>
</div>