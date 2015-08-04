
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
			
				<tr class="prop">
					<td valign="top" class="id"><g:message code="curso.id.label" default="ID" /></td>
				    <td valign="top" class="value"><g:fieldValue bean="${cursoInstance}" field="id"/></td>	
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="curso.nome.label" default="Nome" /></td>
				    <g:if test="${cursoInstance?.nome}">	
				    	<td valign="top" class="value"><g:fieldValue bean="${cursoInstance}" field="nome"/></td>
				    </g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>	
				</tr>
			
				<tr class="prop">
					<td valign="top" class="name"><g:message code="curso.nivel.label" default="Nivel" /></td>
					<g:if test="${cursoInstance?.nivel}">	
						<td valign="top" class="value"><g:fieldValue bean="${cursoInstance}" field="nivel"/></td>
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
