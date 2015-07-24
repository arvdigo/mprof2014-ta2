
<%@ page import="select.app.Sala" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sala.label', default: 'Sala')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<section id="index-sala" class="first">
			<table class="table table-bordered margin-top-medium">
			<thead>
					<tr>
					
						<th><g:message code="sala.campus.label" default="Campus" /></th>
					
						<g:sortableColumn property="descricao" title="${message(code: 'sala.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="vagas" title="${message(code: 'sala.vagas.label', default: 'Vagas')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${salaInstanceList}" status="i" var="salaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${salaInstance.id}">${fieldValue(bean: salaInstance, field: "campus")}</g:link></td>
					
						<td>${fieldValue(bean: salaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: salaInstance, field: "vagas")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${salaInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
