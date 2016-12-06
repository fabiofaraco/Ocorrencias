<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title>Menu Principal</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		
		<link href=<c:url value="/resources/layout/css/scrolling-nav.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/bootstrap/css/bootstrap.min.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/mensagem.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/menu-principal.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/styles/lista.css"/> rel="stylesheet"/>
		<link href=<c:url value="/resources/datatable/css/dataTables.bootstrap.min.css"/> rel="stylesheet"/>		
	</head>
	
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	    <form id="frm" name="frm" method="post">
		    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		        <div class="container">
		            <div class="navbar-header page-scroll">
		                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
		                    <span class="sr-only">Toggle navigation</span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                </button>
		                <a class="navbar-brand page-scroll" href="#page-top">Ocorrências</a>
		            </div>
		
		            
		            <div class="collapse navbar-collapse navbar-ex1-collapse">
		                <ul class="nav navbar-nav">
		                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
		                    <li class="hidden">
		                        <a class="page-scroll" href="#page-top"></a>
		                    </li>
		                    <li>
		                        <a class="page-scroll" href="#about">Usuários</a>
		                    </li>
		                    <li>
		                        <a class="page-scroll" href="#services">Requerentes</a>
		                    </li>
		                    <li>
		                        <a class="page-scroll" href="#contact">Protocolos</a>
		                    </li>
		                </ul>
		            </div>
		            <!-- /.navbar-collapse -->
		        </div>
		        <!-- /.container -->
		    </nav>
		
		    <!-- Intro Section -->
		    <section id="intro" class="intro-section">
		        <div class="container">
		            <div class="row">
		                <div class="col-lg-12">
		                    <h1>Sistema Gerenciador de Ocorrências</h1>
		                </div>
		            </div>
		        </div>
		    </section>
		
		    <section id="about" class="about-section">
		    	<c:import url="lista-usuario.jsp" />
		    </section>
		
		    <section id="services" class="services-section">
		        <c:import url="lista-requerente.jsp" />
		    </section>
		
		    
		    <section id="contact" class="contact-section">
		        <c:import url="lista-protocolo.jsp" />
		    </section>
		</form>
	</body>
	
	<script src=<c:url value="/resources/jquery/jquery-2.2.2.min.js"/>></script>
	<script src=<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="/resources/layout/js/jquery.easing.min.js"/>></script>
	<script src=<c:url value="/resources/layout/js/scrolling-nav.js"/>></script>
	<script src=<c:url value="/resources/javascript/tabela.js"/>></script>
	<script src=<c:url value="/resources/javascript/listaUsuario.js"/>></script>
	<script src=<c:url value="/resources/javascript/listaRequerente.js"/>></script>
	<script src=<c:url value="/resources/datatable/js/jquery.dataTables.min.js"/>></script>
	<script src=<c:url value="/resources/datatable/js/dataTables.bootstrap.min.js"/>></script>
	
</html>
