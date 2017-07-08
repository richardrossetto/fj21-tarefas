function finalizaAgora(id) {
			$.post("finalizaTarefa", {'id' : id}, function(resposta) {
			$("#tarefa_" + id).html("Finalizado");
			$("#data_" + id).html(resposta);
				
			});
		}

function removeTarefa(id) {
	$.post("finalizaTarefa", {'id' : id}, function(resposta) {
	$("#tarefa_" + id).closest("tr").hide();
 	});
	
}