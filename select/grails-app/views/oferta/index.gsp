
<%@ page import="select.app.Oferta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'oferta.label', default: 'Oferta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-oferta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-oferta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
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
			<div class="pagination">
				<g:paginate total="${ofertaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
