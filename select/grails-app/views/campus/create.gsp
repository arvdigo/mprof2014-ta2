<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'campus.label', default: 'Campus')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="create-campus" class="first">
			<g:hasErrors bean="${campusInstance}">
			<ul class="alert alert-warning" role="alert">
				<g:eachError bean="${campusInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:form class="form-horizontal" url="[resource:campusInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="form-actions margin-top-medium">
					<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					<a href="${createLink(uri: '/campus/index')}" class="btn btn-default" role="button">Cancelar</a>
				</div>
			</g:form>
		</section>
	</body>
</html>
