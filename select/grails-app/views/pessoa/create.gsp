<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="create-pessoa" class="first">

			<g:hasErrors bean="${pessoaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${pessoaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:form class="form-horizontal" url="[resource:pessoaInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="form-actions margin-top-medium">
					<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					<button class="btn" type="reset">Cancelar</button>
				</div>
			</g:form>
		</section>
	</body>
</html>
