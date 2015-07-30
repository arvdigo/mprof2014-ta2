
<%@ page import="select.app.Processo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'processo.label', default: 'Processo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="show-processo" class="first">
			<table class="table">
			<tbody>
			
				<g:if test="${processoInstance?.ano}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.ano.label" default="Ano" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${processoInstance}" field="ano"/></td>
				</tr>
				</g:if>
			
				<g:if test="${processoInstance?.descricao}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.descricao.label" default="Descricao" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${processoInstance}" field="descricao"/></td>
				</tr>
				</g:if>
			
				<g:if test="${processoInstance?.edital}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.edital.label" default="Edital" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${processoInstance}" field="edital"/></td>
				</tr>
				</g:if>
			
				<g:if test="${processoInstance?.data_inicial}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.data_inicial.label" default="Datainicial" /></td>
					<td valign="top" class="value"><g:formatDate date="${processoInstance?.data_inicial}" /></td>
				</tr>
				</g:if>
			
				<g:if test="${processoInstance?.data_final}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.data_final.label" default="Datafinal" /></td>
					<td valign="top" class="value"><g:formatDate date="${processoInstance?.data_final}" /></td>
				</tr>
				</g:if>						
			
				<g:if test="${processoInstance?.ofertas}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.ofertas.label" default="Ofertas" /></td>
					<g:each in="${processoInstance.ofertas}" var="o">
						<td valign="top" class="value"><g:link controller="oferta" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></td>
					</g:each>
				</tr>
				</g:if>
				
			</tbody>
			</table>
		</section>
	</body>
</html>
