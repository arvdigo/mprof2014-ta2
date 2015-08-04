
<%@ page import="select.app.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="show-usuario" class="first">
			<table class="table">
			<tbody>		
			
				<tr class="prop">
					<td valign="top" class="name"><g:message code="usuario.id.label" default="ID" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${usuarioInstance}" field="id"/></td>
				</tr>	
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="usuario.username.label" default="Username" /></td>
					<g:if test="${usuarioInstance?.username}">
						<td valign="top" class="value"><g:fieldValue bean="${usuarioInstance}" field="username"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>		
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="inscricao.paswword.label" default="Password" /></td>
					<td valign="top" class="name">-</td>
				</tr>	
				
				<tr class="prop">				
					<td valign="top" class="name"><g:message code="usuario.permissao.label" default="Permissao" /></td>
					<g:if test="${select.app.UsuarioPermissao.findByUsuario(usuarioInstance).permissao}">
						<td valign="top" class="value">${select.app.UsuarioPermissao.findByUsuario(usuarioInstance).permissao}</td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
			</tbody>
			</table>
		</section>
	</body>
</html>
