<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title>Menu Principal</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		
		<link href=<c:url value="/resources/bootstrap/css/bootstrap.min.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/mensagem.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/menu-principal.css"/> rel="stylesheet"/>
		<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	</head>
	<body>
		<div class="container-fluid">
			<form id="frm" name="frm" method="post">
				<c:forEach items="${menus}" var="menu">
				    <div class="form-group col-sm-6 col-md-3">
				    	<a id="${menu.value.id}" type="button" href="${menu.value.action}" class="btn-block btn-menu">					    	
					    	<label>${menu.key}</label>
				    	</a>
				    </div>
				</c:forEach>				
			</form>
		</div>
	</body>
	
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/javascript/menu-principal.js"/>></script>
	<script src=<c:url value="/resources/javascript/mensagem.js"/>></script>
</html>
