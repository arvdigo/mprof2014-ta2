
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
			
				<tr class="prop">
					<td valign="top" class="id"><g:message code="sala.id.label" default="ID" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${salaInstance}" field="id"/></td>
				</tr>	
			
				<tr class="prop">
					<td valign="top" class="name"><g:message code="sala.campus.label" default="Campus" /></td>
					<g:if test="${salaInstance?.campus}">
						<td valign="top" class="value"><g:link controller="campus" action="show" id="${salaInstance?.campus?.id}">${salaInstance?.campus?.nome?.encodeAsHTML()}</g:link></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="sala.descricao.label" default="Descricao" /></td>
					<g:if test="${salaInstance?.descricao}">
						<td valign="top" class="value"><g:fieldValue bean="${salaInstance}" field="descricao"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>				
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="sala.vagas.label" default="Vagas" /></td>
					<g:if test="${salaInstance?.vagas}">
						<td valign="top" class="value"><g:fieldValue bean="${salaInstance}" field="vagas"/></td>
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
