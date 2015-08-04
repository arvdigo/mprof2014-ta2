
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
						<g:sortableColumn property="usuario.id" title="${message(code: 'pessoa.usuario.label', default: 'Usuario')}" />
						<g:sortableColumn property="nome" title="${message(code: 'pessoa.nome.label', default: 'Nome')}" />
						<g:sortableColumn property="rg" title="${message(code: 'pessoa.rg.label', default: 'Rg')}" />					
						<g:sortableColumn property="data_nascimento" title="${message(code: 'pessoa.data_nascimento.label', default: 'Data Nascimento')}" />					
						<g:sortableColumn property="sexo" title="${message(code: 'pessoa.sexo.label', default: 'Cidade')}" />					
						<th class="text-center">Ação</th>	
					</tr>
				</thead>
				<tbody>
				<g:each in="${pessoaInstanceList}" status="i" var="pessoaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
						<td>${fieldValue(bean: pessoaInstance, field: "cpf")}</td>
						<td>${fieldValue(bean: pessoaInstance, field: "usuario.id")}</td>						
						<td>${fieldValue(bean: pessoaInstance, field: "nome")}</td>									
						<td>${fieldValue(bean: pessoaInstance, field: "rg")}</td>
						<td><g:formatDate format="dd/MM/yyyy" date="${pessoaInstance.data_nascimento}" /></td>									
						<td>${fieldValue(bean: pessoaInstance, field: "sexo")}</td>					
						<td class="text-center" style="vertical-align: middle;">
							<g:link class="glyphicon glyphicon-eye-open" action="show" id="${pessoaInstance.id}"></g:link>
							<g:link class="glyphicon glyphicon-pencil" action="edit" id="${pessoaInstance.id}"></g:link>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${pessoaInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
