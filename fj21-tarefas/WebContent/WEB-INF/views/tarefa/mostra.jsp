<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<!--  
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	 	
	    <link href="resources/css/jquery.css" rel="stylesheet">
		<script type="text/javascript" src="resources/js/jquery.js"></script>
		<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
	-->	
		<!-- Incluindo Materialize -->  	   
		<link href="resources/materialize/css/materialize.css" rel="stylesheet">
		<link href="resources/materialize/css/materialize.min.css" rel="stylesheet">
		<script type="text/javascript" src="resources/materialize/js/materialize.js"></script>
		<script type="text/javascript" src="resources/materialize/js/materialize.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		
<title>Alterando as Tarefas</title>
 
</head>

<body>

	<div class="container">
			<h3>Alterar tarefa - ${tarefa.id}</h3>
			
			<form action="alteraTarefa" method="post">
				
				<input type="hidden" name="id" value="${tarefa.id}" /> Descrição:<br />
				<textarea id="icon_prefix2" class="materialize-textarea" name="descricao" >${tarefa.descricao}</textarea>
				
				
					<p>
				      <input type="checkbox" id="test5" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : '' } />
				      <label for="test5">FINALIZAR</label>
				    </p>
				    
					
					Data de finalização:  <caelum:campoData id="dataFinalizacao" /> <br /> 
					
				<br /> 
				
				<input class="waves-effect waves-light btn" type="submit" value="Alterar" />
			</form>
	</div>
</body>
</html>