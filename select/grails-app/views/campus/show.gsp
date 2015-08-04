
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
				
				<tr class="prop">
					<td valign="top" class="id"><g:message code="campus.nome.label" default="ID" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="id"/></td>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.nome.label" default="Nome" /></td>
					<g:if test="${campusInstance?.nome}">
						<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="nome"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
			
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.cep.label" default="Cep" /></td>
					<g:if test="${campusInstance?.cep}">
						<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="cep"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>	
				</tr>
								
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.logradouro.label" default="Logradouro" /></td>
					<g:if test="${campusInstance?.logradouro}">
						<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="logradouro"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.numero.label" default="Numero" /></td>
					<g:if test="${campusInstance?.numero}">
						<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="numero"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
								
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.complemento.label" default="Complemento" /></td>
					<g:if test="${campusInstance?.complemento}">
						<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="complemento"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>	
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.bairro.label" default="Bairro" /></td>
					<g:if test="${campusInstance?.bairro}">
						<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="bairro"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
			
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.cidade.label" default="Cidade" /></td>
					<g:if test="${campusInstance?.cidade}">
						<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="cidade"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>		
				</tr>
							
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="campus.estado.label" default="Estado" /></td>
					<g:if test="${campusInstance?.estado}">
						<td valign="top" class="value"><g:fieldValue bean="${campusInstance}" field="estado"/></td>	
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
