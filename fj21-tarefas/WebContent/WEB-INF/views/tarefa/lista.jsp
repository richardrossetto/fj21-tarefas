<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      
        <link href="resources/css/jquery.css" rel="stylesheet">
		<script type="text/javascript" src="resources/js/jquery.js"></script>
		<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
		<script type="text/javascript" src="resources/tarefasJs/tarefas.js"></script>
<title>Lista de Tarefas</title>
</head>
<body>
	
	
	
<div class="container">
	
	<div class="row">
		<table class="striped">
		
		<h4 align="center">Lista de Tarefas</h4>
				
			<div align="right">	
				<a class="waves-effect waves-light btn" href="novaTarefa">Nova tarefa</a>
			</div>
	
		
			<thead>
				<tr>
					<th>ID</th>
					<th>Descrição</th>
					<th>Finalizado?</th>
					<th>Data de Finalização</th>
					
				</tr>
			</thead>
			
			<c:forEach items="${tarefas}" var="tarefa">
				<tr id="table">
					<td>${tarefa.id}</td>
					<td>${tarefa.descricao}</td>
					
					<td id="tarefa_${tarefa.id}">
					<c:if test="${tarefa.finalizado eq false}">
						<a href="#" onclick="finalizaAgora(${tarefa.id})">
						Finalizar agora
						</a>
					</c:if>
					<c:if test="${tarefa.finalizado eq true}">
						Finalizado
					</c:if>
					</td>
					
					<td id="data_${tarefa.id}">
						<fmt:formatDate value="${tarefa.dataFinalizacao.time }" pattern="dd/MM/yyyy"/>
					</td>
					
					
					<td>
						<a href="#" onclick="removeTarefa(${tarefa.id })">Remover</a></td>
					<td>
					<!-- 
					<td id="remove_${tarefa.id}">
						<a href="removeTarefa?id=${tarefa.id }">Remover</a></td>
					<td> -->
						
						<a href="mostraTarefa?id=${tarefa.id }">Alterar</a>
					
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>