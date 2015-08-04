<%@ page import="select.app.Usuario" %>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="username" required="" value="${usuarioInstance?.username}"/>
</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="password" required="" value=""/>
</div>

<div class="form-group ${hasErrors(bean: salaInstance, field: 'permissao', 'error')} required">
	<label for="campus" class="control-label">
		<g:message code="permissao.label" default="Permissao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" name="permissao" from="${select.app.Permissao.list()}" optionKey="id" required="" value=""/>
</div>


<!-- 
-- Ocultado 
-->

<div class="hide form-group ${hasErrors(bean: usuarioInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="usuario.accountExpired.label" default="Account Expired" />
	</label>
	<g:checkBox name="accountExpired" value="false" />
</div>

<div class="hide form-group ${hasErrors(bean: usuarioInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="usuario.accountLocked.label" default="Account Locked" />	
	</label>
	<g:checkBox name="accountLocked" value="false" />
</div>

<div class="hide form-group ${hasErrors(bean: usuarioInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="usuario.enabled.label" default="Enabled" />	
	</label>
	<g:checkBox name="enabled" value="true" />
</div>

<div class="hide form-group ${hasErrors(bean: usuarioInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="usuario.passwordExpired.label" default="Password Expired" />	
	</label>
	<g:checkBox name="passwordExpired" value="false" />
</div>

