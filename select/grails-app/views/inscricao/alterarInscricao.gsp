<%@ page import="select.app.Inscricao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="edit-inscricao" class="first">

			<g:hasErrors bean="${inscricao}">
			<ul class="alert alert-warning" role="alert">
				<g:eachError bean="${inscricao}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:form class="form-horizontal" url="[resource:inscricao, action:'updateInscricao']" method="PUT" >
				<g:hiddenField name="version" value="${inscricao?.version}" />
				<fieldset class="form">
					<g:render template="formInscricao"/>
				</fieldset>
				<div class="form-actions margin-top-medium">
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
            		<button class="btn" type="reset">Cancelar</button>
				</div>
			</g:form>
		</section>
	</body>
</html>
