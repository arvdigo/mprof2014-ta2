
<%@ page import="select.app.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="index-usuario" class="first">
			<table class="table table-bordered margin-top-medium">			
			<thead>
					<tr>					
						<g:sortableColumn property="id" title="${message(code: 'usuario.id.label', default: 'ID')}" />					
						<g:sortableColumn property="username" title="${message(code: 'usuario.username.label', default: 'Username')}" />					
						<th>Permissão</th>	
						<th class="text-center">Ação</th>						
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
						<td>${fieldValue(bean: usuarioInstance, field: "id")}</td>					
						<td>${fieldValue(bean: usuarioInstance, field: "username")}</td>
						<td>${select.app.UsuarioPermissao?.findByUsuario(usuarioInstance)?.permissao}</td>				
						<td class="text-center" style="vertical-align: middle;">
							<g:link class="glyphicon glyphicon-eye-open" action="show" id="${usuarioInstance.id}"></g:link>
							<g:link class="glyphicon glyphicon-pencil" action="edit" id="${usuarioInstance.id}"></g:link>
						</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div>
				<g:paginate total="${usuarioInstanceCount ?: 0}" />
			</div>
		</section>
	</body>
</html>
