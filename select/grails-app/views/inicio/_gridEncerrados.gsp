<table class="ajax table table-bordered margin-top-medium">
	<thead>
		<tr>					
			<th><g:message code="processo.descricao" default="Processo" /></th>
			<th><g:message code="processo.ano" default="Ano" /></th>
			<th><g:message code="processo.edital" default="Edital" /></th>
			<th><g:message code="processo.data_inicial" default="Data Inicial" /></th>
			<th><g:message code="processo.data_final" default="Data Final" /></th>
		</tr>
	</thead>
	<tbody>

	<g:each in="${processoFechado}" status="i" var="listProcessoFechado">
		<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
			<td>${listProcessoFechado.descricao}</td>
			<td>${listProcessoFechado.ano}</td>
			<td>${listProcessoFechado.edital}</td>
			<td><g:formatDate format="dd/MM/yyyy" date="${listProcessoFechado.data_inicial}" /></td>
			<td><g:formatDate format="dd/MM/yyyy" date="${listProcessoFechado.data_final}" /></td>		
		</tr>
	</g:each>
	</tbody>
</table>
<div>
	<g:if test="${countProcessoFechado > 4}">
		<g:paginate total="${countProcessoFechado ?: 0}" />
	</g:if>
</div>