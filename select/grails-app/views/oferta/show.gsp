
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
			
				<tr class="prop">
					<td valign="top" class="id"><g:message code="oferta.id.label" default="ID" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${ofertaInstance}" field="id"/></td>
				</tr>	
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.processo.label" default="Processo" /></td>
					<g:if test="${ofertaInstance?.processo}">
						<td valign="top" class="value"><g:link controller="processo" action="show" id="${ofertaInstance?.processo?.id}">${ofertaInstance?.processo?.descricao?.encodeAsHTML()}</g:link></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.curso.label" default="Curso" /></td>
					<g:if test="${ofertaInstance?.curso}">
						<td valign="top" class="value"><g:link controller="curso" action="show" id="${ofertaInstance?.curso?.id}">${ofertaInstance?.curso?.nome?.encodeAsHTML()}/${ofertaInstance?.curso?.nivel?.encodeAsHTML()}</g:link></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>		
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.campus.label" default="Campus" /></td>
					<g:if test="${ofertaInstance?.campus}">
						<td valign="top" class="value"><g:link controller="campus" action="show" id="${ofertaInstance?.campus?.id}">${ofertaInstance?.campus?.nome?.encodeAsHTML()}</g:link></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.vagas.label" default="Vagas" /></td>
					<g:if test="${ofertaInstance?.vagas}">
						<td valign="top" class="value"><g:fieldValue bean="${ofertaInstance}" field="vagas"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="oferta.valor.label" default="Valor" /></td>
					<g:if test="${ofertaInstance?.valor}">
						<td valign="top" class="value"><g:fieldValue bean="${ofertaInstance}" field="valor"/></td>
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
