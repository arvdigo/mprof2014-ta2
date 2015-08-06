
<%@ page import="select.app.Inscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
		<sec:ifNotGranted roles="ROLE_ADMIN">
			<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		</sec:ifNotGranted>
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="show-inscricao" class="first">
			<table class="table">
			<tbody>

				<tr class="prop">
					<td valign="top" class="id"><g:message code="inscricao.id.label" default="ID" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${inscricaoInstance}" field="id"/></td>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="inscricao.pessoa.label" default="Pessoa" /></td>
					<g:if test="${inscricaoInstance?.pessoa}">
						<td valign="top" class="value"><g:link controller="pessoa" action="show" id="${inscricaoInstance?.pessoa?.id}">${inscricaoInstance?.pessoa?.id?.encodeAsHTML()} - ${inscricaoInstance?.pessoa?.nome.encodeAsHTML()}</g:link></td>	
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="inscricao.oferta.label" default="Oferta" /></td>
					<g:if test="${inscricaoInstance?.oferta}">	
						<td valign="top" class="value"><g:link controller="oferta" action="show" id="${inscricaoInstance?.oferta?.id}">
							${inscricaoInstance?.oferta?.id?.encodeAsHTML()} - ${inscricaoInstance?.oferta?.processo?.descricao?.encodeAsHTML()} - ${inscricaoInstance?.oferta?.curso?.nome?.encodeAsHTML()}/${inscricaoInstance?.oferta?.curso?.nivel?.encodeAsHTML()} - ${inscricaoInstance?.oferta?.campus?.nome?.encodeAsHTML()}
						</g:link></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="inscricao.sala.label" default="Sala" /></td>
					<g:if test="${inscricaoInstance?.sala}">	
						<td valign="top" class="value"><g:link controller="sala" action="show" id="${inscricaoInstance?.sala?.id}">${inscricaoInstance?.sala?.id?.encodeAsHTML()} - ${inscricaoInstance?.sala?.descricao?.encodeAsHTML()} - ${inscricaoInstance?.sala?.campus?.nome?.encodeAsHTML()}</g:link></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="data"><g:message code="campus.data.label" default="Data Inscrição" /></td>
					<g:if test="${inscricaoInstance?.data}">
						<td valign="top" class="value"><g:formatDate date="${inscricaoInstance.data}" /></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="nota"><g:message code="campus.nota.label" default="Nota" /></td>
					<g:if test="${inscricaoInstance?.nota}">
						<td valign="top" class="value"><g:fieldValue bean="${inscricaoInstance}" field="nota"/></td>
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
