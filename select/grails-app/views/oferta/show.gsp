
<%@ page import="select.app.Oferta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'oferta.label', default: 'Oferta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="show-oferta" class="first">
			<table class="table">
			<tbody>

				<g:if test="${ofertaInstance?.vagas}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.vagas.label" default="Vagas" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${ofertaInstance}" field="vagas"/></td>
				</tr>
				</g:if>
			
				<g:if test="${ofertaInstance?.valor}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.valor.label" default="Valor" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${ofertaInstance}" field="valor"/></td>
				</tr>
				</g:if>
			
				<g:if test="${ofertaInstance?.campus}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.campus.label" default="Campus" /></td>
					<td valign="top" class="value"><g:link controller="campus" action="show" id="${ofertaInstance?.campus?.id}">${ofertaInstance?.campus?.encodeAsHTML()}</g:link></td>
				</tr>
				</g:if>
			
				<g:if test="${ofertaInstance?.curso}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.curso.label" default="Curso" /></td>
					<td valign="top" class="value"><g:link controller="curso" action="show" id="${ofertaInstance?.curso?.id}">${ofertaInstance?.curso?.encodeAsHTML()}</g:link></td>
				</tr>
				</g:if>
			
				<g:if test="${ofertaInstance?.processo}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.processo.label" default="Processo" /></td>
					<td valign="top" class="value"><g:link controller="processo" action="show" id="${ofertaInstance?.processo?.id}">${ofertaInstance?.processo?.encodeAsHTML()}</g:link></td>
				</tr>
				</g:if>
			
			</tbody>
			</table>
		</section>
	</body>
</html>
