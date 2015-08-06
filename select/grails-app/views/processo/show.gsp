
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
			
				<tr class="prop">
					<td valign="top" class="id"><g:message code="processo.id.label" default="ID" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${processoInstance}" field="id"/></td>
				</tr>			
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.ano.label" default="Ano" /></td>
					<g:if test="${processoInstance?.ano}">	
						<td valign="top" class="value"><g:fieldValue bean="${processoInstance}" field="ano"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>			
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.descricao.label" default="Descricao" /></td>
					<g:if test="${processoInstance?.descricao}">
						<td valign="top" class="value"><g:fieldValue bean="${processoInstance}" field="descricao"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>			
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.edital.label" default="Edital" /></td>
					<g:if test="${processoInstance?.edital}">
						<td valign="top" class="value"><g:fieldValue bean="${processoInstance}" field="edital"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>			
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.data_inicial.label" default="Datainicial" /></td>
					<g:if test="${processoInstance?.data_inicial}">
						<td valign="top" class="value"><g:formatDate format="dd/MM/yyyy" date="${processoInstance?.data_inicial}" /></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>		
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="processo.data_final.label" default="Datafinal" /></td>
					<g:if test="${processoInstance?.data_final}">
						<td valign="top" class="value"><g:formatDate format="dd/MM/yyyy" date="${processoInstance?.data_final}" /></td>
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
