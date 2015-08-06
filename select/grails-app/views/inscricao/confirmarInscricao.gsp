<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inscricao.label', default: 'Inscricao')}" />
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title>Confirmar Inscrição</title>
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
			
			<div class="alert alert-warning">
  				<strong>Info!!</strong> Use o CPF e o número da inscrição para confirmar a inscrição do candidato
			</div>
			<g:form class="form-horizontal" url="[resource:inscricao, action:'confirmar']" >
				<fieldset class="form">
					 <div class="form-group">
						<label for="cpf" class="control-label">
							<g:message code="pessoa.cpf.label" default="CPF" />
							<span class="required-indicator">*</span>
						</label>
						
						<g:textField class="form-control" name="cpf" required="" value=""  
							onchange="${remoteFunction(
            					controller:'inscricao', 
            					action:'findInscricoes', 
            					params:'\'cpf=\' + escape(this.value)',, 
            					onSuccess:'updateInscricoes(data)')}" 
                		/>												
					</div>
					<div class="form-group">
						<label for="cpf" class="control-label">
							<g:message code="pessoa.inscricao.label" default="Número da Inscrição" />
							<span class="required-indicator">*</span>
						</label>
						<g:select class="form-control"  name="id" id="inscricao" noSelection="${['null':'Inscrição...']}" from=""></g:select>
  					</div>
				</fieldset>
				<div class="form-actions margin-top-medium">
					<g:submitButton name="create" class="btn btn-primary" value="Confirmar Inscrição" />
					<a href="${createLink(uri: '/')}" class="btn btn-default" role="button">Cancelar</a>
				</div>
			</g:form>
		</section>
		<g:javascript>
			function updateInscricoes(data) {
				// The response comes back as a bunch-o-JSON
				var inscricoes = data	// evaluate JSON
		
				if (inscricoes) {
					var rselect = document.getElementById('inscricao')
		
					// Clear all previous options
					var l = rselect.length
		
					while (l > 0) {
						l--
						rselect.remove(l)
					}
		
					// Rebuild the select
					for (var i=0; i < inscricoes.length; i++) {
						var inscricao = inscricoes[i]
						if(!inscricao.confirmado) {
							var opt = document.createElement('option');
							opt.text = inscricao.id
							opt.value = inscricao.id
					  		try {
					    		rselect.add(opt, null) // standards compliant; doesn't work in IE
					  		}
				  			catch(ex) {
				    			rselect.add(opt) // IE only
				  			}
				  		}
					}
				}
			}
		</g:javascript>
	</body>
</html>