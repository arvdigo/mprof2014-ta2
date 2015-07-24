
<%@ page import="select.app.Campus" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'campus.label', default: 'Campus')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="show-campus" class="first">
			<table class="table">
			<tbody>
			
				<g:if test="${campusInstance?.nome}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.nome.label" default="Nome" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="nome"/></td>
				</tr>
				</g:if>
			
				<g:if test="${campusInstance?.cep}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.cep.label" default="Cep" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="cep"/></td>	
				</tr>
				</g:if>
				
				<g:if test="${campusInstance?.logradouro}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.logradouro.label" default="Logradouro" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="logradouro"/></td>
				</tr>
				</g:if>
			
				<g:if test="${campusInstance?.numero}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.numero.label" default="Numero" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="numero"/></td>
				</tr>
				</g:if>
				
				<g:if test="${campusInstance?.complemento}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.complemento.label" default="Complemento" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="complemento"/></td>	
				</tr>
				</g:if>
			
				<g:if test="${campusInstance?.bairro}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.bairro.label" default="Bairro" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="bairro"/></td>
				</tr>
				</g:if>
			
				<g:if test="${campusInstance?.cidade}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.cidade.label" default="Cidade" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="cidade"/></td>		
				</tr>
				</g:if>
			
				<g:if test="${campusInstance?.estado}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.estado.label" default="Estado" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="estado"/></td>	
				</tr>
				</g:if>
			
				<g:if test="${campusInstance?.ofertas}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.ofertas.label" default="Ofertas" /></td>
					<g:each in="${campusInstance.ofertas}" var="o">
						<td valign="top" class="value"><g:link controller="oferta" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></td>
					</g:each>
				</tr>
				</g:if>
				
			</tbody>
			</table>
		</section>
	</body>
</html>
