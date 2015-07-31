
<%@ page import="select.app.Inscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<section id="index-inscricao" class="first">
		<table class="table table-bordered margin-top-medium">
			<thead>
					<tr>					
						<th><g:message code="inscricao.pessoa.label" default="Pessoa" /></th>
						<th><g:message code="inscricao.oferta.label" default="Oferta" /></th>
						<th><g:message code="inscricao.sala.label" default="Sala" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${inscricaoInstanceList}" status="i" var="inscricaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${inscricaoInstance.id}">${fieldValue(bean: inscricaoInstance, field: "pessoa")}</g:link></td>
						<td>${fieldValue(bean: inscricaoInstance, field: "oferta")}</td>
						<td>${fieldValue(bean: inscricaoInstance, field: "sala")}</td>
						</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${inscricaoInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
