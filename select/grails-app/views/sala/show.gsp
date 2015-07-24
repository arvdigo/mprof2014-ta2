
<%@ page import="select.app.Sala" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sala.label', default: 'Sala')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="show-sala" class="first">
			<table class="table">
			<tbody>
			
				<g:if test="${salaInstance?.campus}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="sala.campus.label" default="Campus" /></td>
					<td valign="top" class="value"><g:link controller="campus" action="show" id="${salaInstance?.campus?.id}">${salaInstance?.campus?.encodeAsHTML()}</g:link></td>
				</tr>
				</g:if>
			
				<g:if test="${salaInstance?.descricao}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="sala.descricao.label" default="Descricao" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${salaInstance}" field="descricao"/></td>
				</tr>
				</g:if>
				
				<g:if test="${salaInstance?.vagas}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="sala.vagas.label" default="Vagas" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${salaInstance}" field="vagas"/></td>
				</tr>
				</g:if>
			
			
				<g:if test="${salaInstance?.inscricoes}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="sala.inscricoes.label" default="Inscricoes" /></td>
					<g:each in="${salaInstance.inscricoes}" var="i">
					<td valign="top" class="value"><g:link controller="inscricao" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></td>
					</g:each>
				</tr>
				</g:if>

			</tbody>
			</table>
		</section>
	</body>
</html>
