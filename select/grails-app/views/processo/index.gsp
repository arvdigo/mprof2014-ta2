
<%@ page import="select.app.Processo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'processo.label', default: 'Processo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="index-processo" class="first">
			<table class="table table-bordered margin-top-medium">
				<thead>
					<tr>					
						<g:sortableColumn property="ano" title="${message(code: 'processo.ano.label', default: 'Ano')}" />
						<g:sortableColumn property="data_final" title="${message(code: 'processo.data_final.label', default: 'Datafinal')}" />
						<g:sortableColumn property="data_inicial" title="${message(code: 'processo.data_inicial.label', default: 'Datainicial')}" />
						<g:sortableColumn property="descricao" title="${message(code: 'processo.descricao.label', default: 'Descricao')}" />
						<g:sortableColumn property="edital" title="${message(code: 'processo.edital.label', default: 'Edital')}" />		
					</tr>
				</thead>
				<tbody>
				<g:each in="${processoInstanceList}" status="i" var="processoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${processoInstance.id}">${fieldValue(bean: processoInstance, field: "ano")}</g:link></td>
						<td><g:formatDate date="${processoInstance.data_final}" /></td>
						<td><g:formatDate date="${processoInstance.data_inicial}" /></td>
						<td>${fieldValue(bean: processoInstance, field: "descricao")}</td>
						<td>${fieldValue(bean: processoInstance, field: "edital")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${processoInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
