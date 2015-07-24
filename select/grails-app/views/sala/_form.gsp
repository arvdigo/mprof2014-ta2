<%@ page import="select.app.Sala" %>

<div class="fieldcontain ${hasErrors(bean: salaInstance, field: 'campus', 'error')} required">
	<label for="campus" class="control-label">
		<g:message code="sala.campus.label" default="Campus" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="campus" name="campus.id" from="${select.app.Campus.list()}" optionKey="id" required="" value="${salaInstance?.campus?.id}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: salaInstance, field: 'descricao', 'error')} required">
	<label for="descricao" class="control-label">
		<g:message code="sala.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descricao" required="" value="${salaInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: salaInstance, field: 'vagas', 'error')} required">
	<label for="vagas" class="control-label">
		<g:message code="sala.vagas.label" default="Vagas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="vagas" type="number" value="${salaInstance.vagas}" required=""/>

</div>

