
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
						<g:sortableColumn property="id" title="${message(code: 'oferta.id.label', default: 'ID')}" />				
						<g:sortableColumn property="processo.descricao" title="${message(code: 'oferta.processo.descricao.label', default: 'Processo')}" />
						<g:sortableColumn property="curso.nome" title="${message(code: 'oferta.curso.nome.label', default: 'Curso')}" />
						<g:sortableColumn property="campus.nome" title="${message(code: 'oferta.campus.nome.label', default: 'Campus')}" />				
						<th><g:message code="oferta.vagas.label" default="Vagas" /></th>
						<th><g:message code="oferta.valor.label" default="Valor" /></th>
						<th class="text-center">Ação</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${ofertaInstanceList}" status="i" var="ofertaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>${fieldValue(bean: ofertaInstance, field: "id")}</td>				
						<td>${fieldValue(bean: ofertaInstance, field: "processo.descricao")}</td>										
						<td>${fieldValue(bean: ofertaInstance, field: "curso.nome")}/${fieldValue(bean: ofertaInstance, field: "curso.nivel")}</td>
						<td>${fieldValue(bean: ofertaInstance, field: "campus.nome")}</td>					
						<td>${fieldValue(bean: ofertaInstance, field: "vagas")}</td>
						<td>${fieldValue(bean: ofertaInstance, field: "valor")}</td>	
						<td class="text-center" style="vertical-align: middle;">
							<g:link class="glyphicon glyphicon-eye-open" action="show" id="${ofertaInstance.id}"></g:link>
							<g:link class="glyphicon glyphicon-pencil" action="edit" id="${ofertaInstance.id}"></g:link>
						</td>					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${ofertaInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
