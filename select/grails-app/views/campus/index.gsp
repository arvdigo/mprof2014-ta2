
<%@ page import="select.app.Campus" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'campus.label', default: 'Campus')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-campus" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-campus" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'campus.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cep" title="${message(code: 'campus.cep.label', default: 'Cep')}" />
					
						<g:sortableColumn property="cidade" title="${message(code: 'campus.cidade.label', default: 'Cidade')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'campus.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="endereco" title="${message(code: 'campus.endereco.label', default: 'Endereco')}" />
					
						<g:sortableColumn property="complemento" title="${message(code: 'campus.complemento.label', default: 'Complemento')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${campusInstanceList}" status="i" var="campusInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${campusInstance.id}">${fieldValue(bean: campusInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: campusInstance, field: "cep")}</td>
					
						<td>${fieldValue(bean: campusInstance, field: "cidade")}</td>
					
						<td>${fieldValue(bean: campusInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: campusInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: campusInstance, field: "complemento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${campusInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
