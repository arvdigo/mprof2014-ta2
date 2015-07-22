
<%@ page import="select.app.Inscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inscricao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inscricao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="inscricao.candidato.label" default="Candidato" /></th>
					
						<th><g:message code="inscricao.oferta.label" default="Oferta" /></th>
					
						<th><g:message code="inscricao.sala.label" default="Sala" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inscricaoInstanceList}" status="i" var="inscricaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inscricaoInstance.id}">${fieldValue(bean: inscricaoInstance, field: "candidato")}</g:link></td>
					
						<td>${fieldValue(bean: inscricaoInstance, field: "oferta")}</td>
					
						<td>${fieldValue(bean: inscricaoInstance, field: "sala")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inscricaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
