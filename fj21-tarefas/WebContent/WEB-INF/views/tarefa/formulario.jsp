<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    
<title>Adicionar Tarefa</title>
</head>
<body>
	<div class="container">
		
		<h4>Adicionar Tarefa</h4>
		
		<div align="right">	
				<a class="waves-effect waves-light btn" href="listaTarefas">Lista de tarefas</a>
		</div>
	
		<form:errors path="tarefa.descricao" />
		<form action="adicionaTarefa" method="POST">
			Descrição: <br />
			<textarea id="icon_prefix2" class="materialize-textarea" name="descricao" rows="5" cols="100"></textarea> <br />
			<input class="waves-effect waves-light btn" type="submit" value="Adicionar">
		</form>
	</div>
</body>
</html>