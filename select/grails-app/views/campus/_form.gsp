<%@ page import="select.app.Campus" %>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'nome', 'error')} required">
	<label for="nome" class="control-label">
		<g:message code="campus.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<div>
	<g:textField class="form-control" name="nome" required="" value="${campusInstance?.nome}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'cep', 'error')} required">
	<label for="cep" class="control-label">
		<g:message code="campus.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<div>
	<g:textField class="form-control" name="cep" required="" value="${campusInstance?.cep}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'endereco', 'error')} required">
	<label for="endereco" class="control-label">
		<g:message code="campus.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="endereco" required="" value="${campusInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'numero', 'error')} required">
	<label for="numero" class="control-label">
		<g:message code="campus.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="numero" type="number" value="${campusInstance.numero}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'bairro', 'error')} required">
	<label for="bairro" class="control-label">
		<g:message code="campus.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<div>
	<g:textField class="form-control" name="bairro" required="" value="${campusInstance?.bairro}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'complemento', 'error')} ">
	<label for="complemento" class="control-label">
		<g:message code="campus.complemento.label" default="Complemento" />
	</label>
	<g:textField class="form-control" name="complemento" value="${campusInstance?.complemento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'cidade', 'error')} required">
	<label for="cidade" class="control-label">
		<g:message code="campus.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="cidade" required="" value="${campusInstance?.cidade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'estado', 'error')} required">
	<label for="estado" class="control-label">
		<g:message code="campus.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="estado" required="" value="${campusInstance?.estado}"/>
</div>