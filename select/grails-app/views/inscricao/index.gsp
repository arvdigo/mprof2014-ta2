
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
						<g:sortableColumn property="id" title="${message(code: 'inscicao.id.label', default: 'ID')}" />
						<g:sortableColumn property="id" title="${message(code: 'inscricaos.pessoa.nome.label', default: 'Nome')}" />
						<g:sortableColumn property="oferta.processo.descricao" title="${message(code: 'inscricao.oferta.label', default: 'Oferta')}" />																				
						<g:sortableColumn property="confirmado" title="${message(code: 'inscricao.confirmado.label', default: 'Confirmado')}" />	
						<th><g:message code="inscricao.sala.label" default="Sala" /></th>
						<th class="text-center">Ação</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${inscricaoInstanceList}" status="i" var="inscricaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>${fieldValue(bean: inscricaoInstance, field: "id")}</td>
						<td>${fieldValue(bean: inscricaoInstance, field: "pessoa.nome")}</td>
						<td>${fieldValue(bean: inscricaoInstance, field:"oferta.processo.descricao")} -  ${fieldValue(bean: inscricaoInstance, field:"oferta.curso.nome")}/ ${fieldValue(bean: inscricaoInstance, field:"oferta.curso.nivel")} -  ${fieldValue(bean: inscricaoInstance, field:"oferta.campus.nome")}</td>
						<td><g:formatBoolean boolean="${inscricaoInstance.confirmado}" /></td>	
						<td>${fieldValue(bean: inscricaoInstance, field: "sala.descricao")}</td>
						<td class="text-center" style="vertical-align: middle;">
							<g:link class="glyphicon glyphicon-eye-open" action="show" id="${inscricaoInstance.id}"></g:link>
							<g:link class="glyphicon glyphicon-pencil" action="edit" id="${inscricaoInstance.id}"></g:link>
						</td>		
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
