<%@ page import="select.app.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="edit-usuario" class="first">
			<g:hasErrors bean="${usuarioInstance}">
			<ul class="alert alert-warning" role="alert">
				<g:eachError bean="${usuarioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:form class="form-horizontal"  url="[resource:usuarioInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${usuarioInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="form-actions margin-top-medium">
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            		<a href="${createLink(uri: '/usuario/index')}" class="btn btn-default" role="button">Cancelar</a>
				</div>
			</g:form>
		</section>
	</body>
</html>
