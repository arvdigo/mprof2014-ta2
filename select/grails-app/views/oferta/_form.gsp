<%@ page import="select.app.Oferta" %>



<div class="fieldcontain ${hasErrors(bean: ofertaInstance, field: 'vagas', 'error')} required">
	<label for="vagas">
		<g:message code="oferta.vagas.label" default="Vagas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="vagas" type="number" value="${ofertaInstance.vagas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: ofertaInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="oferta.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: ofertaInstance, field: 'valor')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: ofertaInstance, field: 'campus', 'error')} required">
	<label for="campus">
		<g:message code="oferta.campus.label" default="Campus" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="campus" name="campus.id" from="${select.app.Campus.list()}" optionKey="id" required="" value="${ofertaInstance?.campus?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ofertaInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="oferta.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${select.app.Curso.list()}" optionKey="id" required="" value="${ofertaInstance?.curso?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ofertaInstance, field: 'processo', 'error')} required">
	<label for="processo">
		<g:message code="oferta.processo.label" default="Processo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="processo" name="processo.id" from="${select.app.Processo.list()}" optionKey="id" required="" value="${ofertaInstance?.processo?.id}" class="many-to-one"/>

</div>

