
<%@ page import="select.app.Candidato" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidato.label', default: 'Candidato')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-candidato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-candidato" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cpf" title="${message(code: 'candidato.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'candidato.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="nome_mae" title="${message(code: 'candidato.nome_mae.label', default: 'Nomemae')}" />
					
						<g:sortableColumn property="rg" title="${message(code: 'candidato.rg.label', default: 'Rg')}" />
					
						<g:sortableColumn property="logradouro" title="${message(code: 'candidato.logradouro.label', default: 'Logradouro')}" />
					
						<g:sortableColumn property="cidade" title="${message(code: 'candidato.cidade.label', default: 'Cidade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${candidatoInstanceList}" status="i" var="candidatoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${candidatoInstance.id}">${fieldValue(bean: candidatoInstance, field: "cpf")}</g:link></td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "nome_mae")}</td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "rg")}</td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "logradouro")}</td>
					
						<td>${fieldValue(bean: candidatoInstance, field: "cidade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${candidatoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
