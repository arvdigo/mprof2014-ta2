
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
						<g:sortableColumn property="nome" title="${message(code: 'campus.nome.label', default: 'Nome')}" />
						<g:sortableColumn property="cep" title="${message(code: 'campus.cep.label', default: 'Cep')}" />
						<g:sortableColumn property="logradouro" title="${message(code: 'campus.logradouro.label', default: 'Logradouro')}" />
						<g:sortableColumn property="bairro" title="${message(code: 'campus.bairro.label', default: 'Bairro')}" />
						<g:sortableColumn property="cidade" title="${message(code: 'campus.cidade.label', default: 'Cidade')}" />
						<g:sortableColumn property="estado" title="${message(code: 'campus.estado.label', default: 'Estado')}" />						
					</tr>
				</thead>
				<tbody>
				<g:each in="${campusInstanceList}" status="i" var="campusInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
						<td><g:link action="show" id="${campusInstance.id}">${fieldValue(bean: campusInstance, field: "nome")}</g:link></td>
						<td>${fieldValue(bean: campusInstance, field: "cep")}</td>
						<td>${fieldValue(bean: campusInstance, field: "logradouro")}</td>					
						<td>${fieldValue(bean: campusInstance, field: "bairro")}</td>						
						<td>${fieldValue(bean: campusInstance, field: "cidade")}</td>				
						<td>${fieldValue(bean: campusInstance, field: "estado")}</td>								
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
