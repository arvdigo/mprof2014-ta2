
<%@ page import="select.app.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidato.label', default: 'Candidato')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-candidato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-candidato" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list candidato">
			
				<g:if test="${candidatoInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="candidato.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${candidatoInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="candidato.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${candidatoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.nome_mae}">
				<li class="fieldcontain">
					<span id="nome_mae-label" class="property-label"><g:message code="candidato.nome_mae.label" default="Nomemae" /></span>
					
						<span class="property-value" aria-labelledby="nome_mae-label"><g:fieldValue bean="${candidatoInstance}" field="nome_mae"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="candidato.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${candidatoInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.logradouro}">
				<li class="fieldcontain">
					<span id="logradouro-label" class="property-label"><g:message code="candidato.logradouro.label" default="Logradouro" /></span>
					
						<span class="property-value" aria-labelledby="logradouro-label"><g:fieldValue bean="${candidatoInstance}" field="logradouro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="candidato.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${candidatoInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="candidato.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${candidatoInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.cep}">
				<li class="fieldcontain">
					<span id="cep-label" class="property-label"><g:message code="candidato.cep.label" default="Cep" /></span>
					
						<span class="property-value" aria-labelledby="cep-label"><g:fieldValue bean="${candidatoInstance}" field="cep"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.complemento}">
				<li class="fieldcontain">
					<span id="complemento-label" class="property-label"><g:message code="candidato.complemento.label" default="Complemento" /></span>
					
						<span class="property-value" aria-labelledby="complemento-label"><g:fieldValue bean="${candidatoInstance}" field="complemento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="candidato.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${candidatoInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="candidato.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${candidatoInstance}" field="bairro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.estado_civil}">
				<li class="fieldcontain">
					<span id="estado_civil-label" class="property-label"><g:message code="candidato.estado_civil.label" default="Estadocivil" /></span>
					
						<span class="property-value" aria-labelledby="estado_civil-label"><g:fieldValue bean="${candidatoInstance}" field="estado_civil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="candidato.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${candidatoInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.data_nascimento}">
				<li class="fieldcontain">
					<span id="data_nascimento-label" class="property-label"><g:message code="candidato.data_nascimento.label" default="Datanascimento" /></span>
					
						<span class="property-value" aria-labelledby="data_nascimento-label"><g:formatDate date="${candidatoInstance?.data_nascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.cidade_nascimento}">
				<li class="fieldcontain">
					<span id="cidade_nascimento-label" class="property-label"><g:message code="candidato.cidade_nascimento.label" default="Cidadenascimento" /></span>
					
						<span class="property-value" aria-labelledby="cidade_nascimento-label"><g:fieldValue bean="${candidatoInstance}" field="cidade_nascimento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.nacionalidade}">
				<li class="fieldcontain">
					<span id="nacionalidade-label" class="property-label"><g:message code="candidato.nacionalidade.label" default="Nacionalidade" /></span>
					
						<span class="property-value" aria-labelledby="nacionalidade-label"><g:fieldValue bean="${candidatoInstance}" field="nacionalidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="candidato.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${candidatoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="candidato.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${candidatoInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.inscricoes}">
				<li class="fieldcontain">
					<span id="inscricoes-label" class="property-label"><g:message code="candidato.inscricoes.label" default="Inscricoes" /></span>
					
						<g:each in="${candidatoInstance.inscricoes}" var="i">
						<span class="property-value" aria-labelledby="inscricoes-label"><g:link controller="inscricao" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${candidatoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="candidato.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${candidatoInstance?.usuario?.id}">${candidatoInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:candidatoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${candidatoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
