<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="create-inscricao" class="first">
		
			<g:hasErrors bean="${inscricaoInstance}">
			<ul class="alert alert-warning" role="alert">
				<g:eachError bean="${inscricaoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<g:form class="form-horizontal" url="[resource:inscricaoInstance, action:'saveInscricao']" >
				<fieldset class="form">
					<g:render template="formInscricao"/>
				</fieldset>
				<div class="form-actions margin-top-medium">
					<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					<g:link controller='inicio' action="index">    
   						<input type="button"  class="btn btn-default" value="Cancelar" class="button"/> 
					</g:link>
				</div>
			</g:form>
		</section>
	</body>
</html>