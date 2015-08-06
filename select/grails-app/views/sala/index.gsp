
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
						<g:sortableColumn property="id" title="${message(code: 'processo.id.label', default: 'ID')}" />
						<g:sortableColumn property="campus.nome" title="${message(code: 'sala.campus.label', default: 'Campus')}" />						
						<g:sortableColumn property="descricao" title="${message(code: 'sala.descricao.label', default: 'Descricao')}" />
						<g:sortableColumn property="vagas" title="${message(code: 'sala.vagas.label', default: 'Vagas')}" />
						<th class="text-center">Ação</th>					
					</tr>
				</thead>
				<tbody>
				<g:each in="${salaInstanceList}" status="i" var="salaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
						<td>${fieldValue(bean: salaInstance, field: "id")}</td>
						<td>${fieldValue(bean: salaInstance, field: "campus.nome")}</td>
						<td>${fieldValue(bean: salaInstance, field: "descricao")}</td>
						<td>${fieldValue(bean: salaInstance, field: "vagas")}</td>
						<td class="text-center" style="vertical-align: middle;">
							<g:link class="glyphicon glyphicon-eye-open" action="show" id="${salaInstance.id}"></g:link>
							<g:link class="glyphicon glyphicon-pencil" action="edit" id="${salaInstance.id}"></g:link>
						</td>
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
