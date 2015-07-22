
<%@ page import="select.app.Processo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'processo.label', default: 'Processo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-processo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-processo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list processo">
			
				<g:if test="${processoInstance?.ano}">
				<li class="fieldcontain">
					<span id="ano-label" class="property-label"><g:message code="processo.ano.label" default="Ano" /></span>
					
						<span class="property-value" aria-labelledby="ano-label"><g:fieldValue bean="${processoInstance}" field="ano"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${processoInstance?.data_final}">
				<li class="fieldcontain">
					<span id="data_final-label" class="property-label"><g:message code="processo.data_final.label" default="Datafinal" /></span>
					
						<span class="property-value" aria-labelledby="data_final-label"><g:formatDate date="${processoInstance?.data_final}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${processoInstance?.data_inicial}">
				<li class="fieldcontain">
					<span id="data_inicial-label" class="property-label"><g:message code="processo.data_inicial.label" default="Datainicial" /></span>
					
						<span class="property-value" aria-labelledby="data_inicial-label"><g:formatDate date="${processoInstance?.data_inicial}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${processoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="processo.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${processoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${processoInstance?.edital}">
				<li class="fieldcontain">
					<span id="edital-label" class="property-label"><g:message code="processo.edital.label" default="Edital" /></span>
					
						<span class="property-value" aria-labelledby="edital-label"><g:fieldValue bean="${processoInstance}" field="edital"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${processoInstance?.ofertas}">
				<li class="fieldcontain">
					<span id="ofertas-label" class="property-label"><g:message code="processo.ofertas.label" default="Ofertas" /></span>
					
						<g:each in="${processoInstance.ofertas}" var="o">
						<span class="property-value" aria-labelledby="ofertas-label"><g:link controller="oferta" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:processoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${processoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
