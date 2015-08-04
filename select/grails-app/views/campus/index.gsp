
<%@ page import="select.app.Campus" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'campus.label', default: 'Campus')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="index-campus" class="first">
			<table class="table table-bordered margin-top-medium">
				<thead>
					<tr>
						<g:sortableColumn property="id" title="${message(code: 'campus.id.label', default: 'ID')}" />					
						<g:sortableColumn property="nome" title="${message(code: 'campus.nome.label', default: 'Nome')}" />
						<g:sortableColumn property="cidade" title="${message(code: 'campus.cidade.label', default: 'Cidade')}" />
						<g:sortableColumn property="estado" title="${message(code: 'campus.estado.label', default: 'Estado')}" />						
						<th class="text-center">Ação</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${campusInstanceList}" status="i" var="campusInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
						<td>${fieldValue(bean: campusInstance, field: "id")}</td>
						<td>${fieldValue(bean: campusInstance, field: "nome")}</td>						
						<td>${fieldValue(bean: campusInstance, field: "cidade")}</td>				
						<td>${fieldValue(bean: campusInstance, field: "estado")}</td>
						<td class="text-center" style="vertical-align: middle;">
							<g:link class="glyphicon glyphicon-eye-open" action="show" id="${campusInstance.id}"></g:link>
							<g:link class="glyphicon glyphicon-pencil" action="edit" id="${campusInstance.id}"></g:link>
						</td>								
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${campusInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
