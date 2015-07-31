
<%@ page import="select.app.Inscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="show-inscricao" class="first">
			<table class="table">
			<tbody>
			
				<g:if test="${inscricaoInstance?.pessoa}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="inscricao.pessoa.label" default="Pessoa" /></td>
					<td valign="top" class="value"><g:link controller="pessoa" action="show" id="${inscricaoInstance?.pessoa?.id}">${inscricaoInstance?.pessoa?.encodeAsHTML()}</g:link></td>	
				</tr>
				</g:if>
			
				<g:if test="${inscricaoInstance?.oferta}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="inscricao.oferta.label" default="Oferta" /></td>
					<td valign="top" class="value"><g:link controller="oferta" action="show" id="${inscricaoInstance?.oferta?.id}">${inscricaoInstance?.oferta?.encodeAsHTML()}</g:link></td>
					
				</tr>
				</g:if>
			
				<g:if test="${inscricaoInstance?.sala}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="inscricao.sala.label" default="Sala" /></td>
					<td valign="top" class="value"><g:link controller="sala" action="show" id="${inscricaoInstance?.sala?.id}">${inscricaoInstance?.sala?.encodeAsHTML()}</g:link></td>
					
				</tr>
				</g:if>
			
			</tbody>
			</table>
		</section>
	</body>
</html>
