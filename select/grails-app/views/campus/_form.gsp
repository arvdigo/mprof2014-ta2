<%@ page import="select.app.Campus" %>

<div class="form-group ${hasErrors(bean: campusInstance, field: 'nome', 'error')} ">
	<label for="nome" class="control-label">
		<g:message code="campus.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>	
	<g:textField class="form-control" name="nome" required="" value="${campusInstance?.nome}"/>
</div>

<div class="form-group ${hasErrors(bean: campusInstance, field: 'cep', 'error')} ">
	<label for="cep" class="control-label">
		<g:message code="campus.cep.label" default="Cep" />
	</label>
	<g:textField class="form-control" name="cep" value="${campusInstance?.cep}"/>
</div>

<div class="form-group ${hasErrors(bean: campusInstance, field: 'logradouro', 'error')} ">
	<label for="logradouro" class="control-label">
		<g:message code="campus.logradouro.label" default="Logradouro" />
	</label>
	<g:textField class="form-control" name="logradouro" value="${campusInstance?.logradouro}"/>
</div>

<div class="form-group ${hasErrors(bean: campusInstance, field: 'numero', 'error')} ">
	<label for="numero" class="control-label">
		<g:message code="campus.numero.label" default="Numero" />
	</label>
	<g:field class="form-control" name="numero" type="number" value="${campusInstance.numero}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: campusInstance, field: 'complemento', 'error')} ">
	<label for="complemento" class="control-label">
		<g:message code="campus.complemento.label" default="Complemento" />
	</label>
	<g:textField class="form-control" name="complemento" value="${campusInstance?.complemento}"/>
</div>

<div class="form-group ${hasErrors(bean: campusInstance, field: 'bairro', 'error')} ">
	<label for="bairro" class="control-label">
		<g:message code="campus.bairro.label" default="Bairro" />
	</label>
	<g:textField class="form-control" name="bairro" value="${campusInstance?.bairro}"/>
</div>

<div class="form-group ${hasErrors(bean: campusInstance, field: 'cidade', 'error')} ">
	<label for="cidade" class="control-label">
		<g:message code="campus.cidade.label" default="Cidade" />
	</label>
	<g:textField class="form-control" name="cidade" value="${campusInstance?.cidade}"/>
</div>

<div class="form-group ${hasErrors(bean: campusInstance, field: 'estado', 'error')} ">
	<label for="estado" class="control-label">
		<g:message code="campus.estado.label" default="Estado" />
	</label>
	<g:textField class="form-control" name="estado" value="${campusInstance?.estado}"/>
</div>