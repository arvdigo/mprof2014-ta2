<%@ page import="select.app.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="edit-pessoa" class="first">
			
			<g:hasErrors bean="${pessoaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${pessoaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:form class="form-horizontal" url="[resource:pessoaInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${pessoaInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="form-actions margin-top-medium">
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            		<button class="btn" type="reset">Cancelar</button>
				</div>
			</g:form>
		</section>
	</body>
</html>
