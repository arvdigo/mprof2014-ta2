
<%@ page import="select.app.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="index-pessoa" class="first">
			<table class="table table-bordered margin-top-medium">
			<thead>
					<tr>					
						<g:sortableColumn property="cpf" title="${message(code: 'pessoa.cpf.label', default: 'Cpf')}" />
						<g:sortableColumn property="nome" title="${message(code: 'pessoa.nome.label', default: 'Nome')}" />					
						<g:sortableColumn property="nome_mae" title="${message(code: 'pessoa.nome_mae.label', default: 'Nomemae')}" />					
						<g:sortableColumn property="rg" title="${message(code: 'pessoa.rg.label', default: 'Rg')}" />					
						<g:sortableColumn property="logradouro" title="${message(code: 'pessoa.logradouro.label', default: 'Logradouro')}" />					
						<g:sortableColumn property="cidade" title="${message(code: 'pessoa.cidade.label', default: 'Cidade')}" />					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pessoaInstanceList}" status="i" var="pessoaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
						<td><g:link action="show" id="${pessoaInstance.id}">${fieldValue(bean: pessoaInstance, field: "cpf")}</g:link></td>					
						<td>${fieldValue(bean: pessoaInstance, field: "nome")}</td>					
						<td>${fieldValue(bean: pessoaInstance, field: "nome_mae")}</td>					
						<td>${fieldValue(bean: pessoaInstance, field: "rg")}</td>					
						<td>${fieldValue(bean: pessoaInstance, field: "logradouro")}</td>					
						<td>${fieldValue(bean: pessoaInstance, field: "cidade")}</td>					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${cursoInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
