
<%@ page import="select.app.Processo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'processo.label', default: 'Processo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-processo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-processo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ano" title="${message(code: 'processo.ano.label', default: 'Ano')}" />
					
						<g:sortableColumn property="data_final" title="${message(code: 'processo.data_final.label', default: 'Datafinal')}" />
					
						<g:sortableColumn property="data_inicial" title="${message(code: 'processo.data_inicial.label', default: 'Datainicial')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'processo.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="edital" title="${message(code: 'processo.edital.label', default: 'Edital')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${processoInstanceList}" status="i" var="processoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${processoInstance.id}">${fieldValue(bean: processoInstance, field: "ano")}</g:link></td>
					
						<td><g:formatDate date="${processoInstance.data_final}" /></td>
					
						<td><g:formatDate date="${processoInstance.data_inicial}" /></td>
					
						<td>${fieldValue(bean: processoInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: processoInstance, field: "edital")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${processoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
