<table class="ajax table table-bordered margin-top-medium">
	<thead>
		<tr>					
			<th><g:message code="inscricao.oferta.processo.descricao" default="Processo" /></th>
			<th><g:message code="inscricao.oferta.curso.nome" default="Curso" /></th>
			<th><g:message code="inscricao.oferta.curso.nivel" default="Nível" /></th>
			<th><g:message code="inscricao.confirmado" default="Confirmado" /></th>
			<th><g:message code="inscricao.sala" default="Local de Prova" /></th>
			<th class="form-inline"><g:message code="inscricao.acao" default="Ação" /></th>
		</tr>
	</thead>
	<tbody>
	<g:each in="${inscricao}" status="i" var="listInscrito">
		<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
			<td>${listInscrito.oferta.processo.descricao}</td>
			<td>${listInscrito.oferta.curso.nome}</td>
			<td>${listInscrito.oferta.curso.nivel}</td>
			<td>
				<g:if test="${listInscrito.confirmado}">
					SIM
				</g:if>
				<g:else test="${listInscrito.confirmado}">
					Não
				</g:else>
			</td>
			<td>
				<g:if test="${listInscrito.sala}">
					${listInscrito.sala.campus.nome}: ${listInscrito.sala.descricao}</td>
				</g:if>	
			<td class="text-center" style="vertical-align: middle;">
				<g:if test="${!listInscrito.sala}">
					<g:link class="glyphicon glyphicon-edit" controller="inscricao" action="alterarInscricao" id="${listInscrito.id}"></g:link>
				</g:if>
			</td>
		</tr>
	</g:each>
	</tbody>
</table>
<div>
	<g:if test="${countInscricao > 4}">
		<g:paginate total="${countInscricao ?: 0}" />
	</g:if>
</div>