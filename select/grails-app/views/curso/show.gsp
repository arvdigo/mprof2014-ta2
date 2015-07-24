
<%@ page import="select.app.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="show-curso" class="first">
			<table class="table">
			<tbody>
			
				<g:if test="${cursoInstance?.nome}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="curso.nome.label" default="Nome" /></td>
				    <td valign="top" class="value"><g:fieldValue bean="${cursoInstance}" field="nome"/></td>	
				</tr>
				</g:if>
			
				<g:if test="${cursoInstance?.nivel}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="curso.nivel.label" default="Nivel" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${cursoInstance}" field="nivel"/></td>
				</tr>
				</g:if>
			
				<g:if test="${cursoInstance?.ofertas}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="curso.ofertas.label" default="Ofertas" /></td>
					<g:each in="${cursoInstance.ofertas}" var="o">
						<td valign="top" class="value"><g:link controller="oferta" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></td>
					</g:each>
				</tr>
				</g:if>
			
			</tbody>
			</table>
		</section>
	</body>
</html>
