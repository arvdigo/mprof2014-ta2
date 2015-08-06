
<%@ page import="select.app.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="index-curso" class="first">
			<table class="table table-bordered margin-top-medium">
				<thead>
					<tr>					
						<g:sortableColumn property="id" title="${message(code: 'curso.id.label', default: 'ID')}" />
						<g:sortableColumn property="nome" title="${message(code: 'curso.nome.label', default: 'Nome')}" />
						<g:sortableColumn property="nivel" title="${message(code: 'curso.nivel.label', default: 'Nivel')}" />
						<th class="text-center">Ação</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>${fieldValue(bean: cursoInstance, field: "id")}</td>
						<td>${fieldValue(bean: cursoInstance, field: "nome")}</td>
						<td>${fieldValue(bean: cursoInstance, field: "nivel")}</td>
						<td class="text-center" style="vertical-align: middle;">
							<g:link class="glyphicon glyphicon-eye-open" action="show" id="${cursoInstance.id}"></g:link>
							<g:link class="glyphicon glyphicon-pencil" action="edit" id="${cursoInstance.id}"></g:link>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${cursoInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
