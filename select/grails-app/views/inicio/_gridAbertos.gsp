<table class="ajax table table-bordered margin-top-medium">
	<thead>
		<tr>					
			<th><g:message code="processo.descricao" default="Processo" /></th>
			<th><g:message code="processo.edital" default="Edital" /></th>
			<th><g:message code="processo.data_inicial" default="Data Inicial" /></th>
			<th><g:message code="processo.data_final" default="Data Final" /></th>
			<th><g:message code="inscricao.acao" default="Ação" /></th>
		</tr>
	</thead>
	<tbody>

	<g:each in="${processoAberto}" status="i" var="listProcessoAberto">
		<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
			<td>${listProcessoAberto.descricao}</td>
			<td>${listProcessoAberto.edital}</td>
			<td><g:formatDate format="dd/MM/yyyy" date="${listProcessoAberto.data_inicial}" /></td>
			<td><g:formatDate format="dd/MM/yyyy" date="${listProcessoAberto.data_final}" /></td>
			<td class="text-center" style="vertical-align: middle;"><g:link class="glyphicon glyphicon-plus" controller="inscricao" action="criarInscricao" id="${listProcessoAberto.id}"></g:link></td>
		</tr>
	</g:each>
	</tbody>
</table>
<div>
	<g:if test="${countProcessoAberto > 4}">
		<g:paginate total="${countProcessoAberto ?: 0}" />
	</g:if>
</div>