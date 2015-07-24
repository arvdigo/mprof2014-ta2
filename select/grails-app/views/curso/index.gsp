
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
						<g:sortableColumn property="nome" title="${message(code: 'curso.nome.label', default: 'Nome')}" />
						<g:sortableColumn property="nivel" title="${message(code: 'curso.nivel.label', default: 'Nivel')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${cursoInstance.id}">${fieldValue(bean: cursoInstance, field: "nome")}</g:link></td>
						<td>${fieldValue(bean: cursoInstance, field: "nivel")}</td>
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
