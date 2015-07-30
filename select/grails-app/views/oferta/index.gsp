
<%@ page import="select.app.Oferta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'oferta.label', default: 'Oferta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="index-oferta" class="first">
			<table class="table table-bordered margin-top-medium">
				<thead>
					<tr>					
						<g:sortableColumn property="vagas" title="${message(code: 'oferta.vagas.label', default: 'Vagas')}" />
						<g:sortableColumn property="valor" title="${message(code: 'oferta.valor.label', default: 'Valor')}" />
						<th><g:message code="oferta.campus.label" default="Campus" /></th>
						<th><g:message code="oferta.curso.label" default="Curso" /></th>
						<th><g:message code="oferta.processo.label" default="Processo" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${ofertaInstanceList}" status="i" var="ofertaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
						<td><g:link action="show" id="${ofertaInstance.id}">${fieldValue(bean: ofertaInstance, field: "vagas")}</g:link></td>
						<td>${fieldValue(bean: ofertaInstance, field: "valor")}</td>					
						<td>${fieldValue(bean: ofertaInstance, field: "campus")}</td>					
						<td>${fieldValue(bean: ofertaInstance, field: "curso")}</td>					
						<td>${fieldValue(bean: ofertaInstance, field: "processo")}</td>					
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
