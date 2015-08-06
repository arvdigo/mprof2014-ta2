<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="create-curso" class="first">
		
			<g:hasErrors bean="${cursoInstance}">
			<ul class="alert alert-warning" role="alert">
				<g:eachError bean="${cursoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:form class="form-horizontal" url="[resource:cursoInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="form-actions margin-top-medium">
					<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					<a href="${createLink(uri: '/curso/index')}" class="btn btn-default" role="button">Cancelar</a>
				</div>
			</g:form>
		</section>
	</body>
</html>
