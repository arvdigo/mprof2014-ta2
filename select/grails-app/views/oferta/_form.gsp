<%@ page import="select.app.Oferta" %>

<div class="form-group ${hasErrors(bean: ofertaInstance, field: 'vagas', 'error')} required">
	<label for="vagas" class="control-label">
		<g:message code="oferta.vagas.label" default="Vagas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="vagas" type="number" value="${ofertaInstance.vagas}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: ofertaInstance, field: 'valor', 'error')} required">
	<label for="valor" class="control-label">
		<g:message code="oferta.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="valor" value="${fieldValue(bean: ofertaInstance, field: 'valor')}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: ofertaInstance, field: 'campus', 'error')} required">
	<label for="campus" class="control-label">
		<g:message code="oferta.campus.label" default="Campus" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="campus" name="campus.id" from="${select.app.Campus.list()}" optionKey="id" required="" value="${ofertaInstance?.campus?.id}"/>
</div>

<div class="form-group ${hasErrors(bean: ofertaInstance, field: 'curso', 'error')} required">
	<label for="curso" class="control-label">
		<g:message code="oferta.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="curso" name="curso.id" from="${select.app.Curso.list()}" optionKey="id" required="" value="${ofertaInstance?.curso?.id}"/>
</div>

<div class="form-group ${hasErrors(bean: ofertaInstance, field: 'processo', 'error')} required">
	<label for="processo" class="control-label">
		<g:message code="oferta.processo.label" default="Processo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="processo" name="processo.id" from="${select.app.Processo.list()}" optionKey="id" required="" value="${ofertaInstance?.processo?.id}"/>
</div>

