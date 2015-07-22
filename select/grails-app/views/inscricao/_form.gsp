<%@ page import="select.app.Inscricao" %>



<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'candidato', 'error')} required">
	<label for="candidato">
		<g:message code="inscricao.candidato.label" default="Candidato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candidato" name="candidato.id" from="${select.app.Candidato.list()}" optionKey="id" required="" value="${inscricaoInstance?.candidato?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'oferta', 'error')} required">
	<label for="oferta">
		<g:message code="inscricao.oferta.label" default="Oferta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="oferta" name="oferta.id" from="${select.app.Oferta.list()}" optionKey="id" required="" value="${inscricaoInstance?.oferta?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: inscricaoInstance, field: 'sala', 'error')} required">
	<label for="sala">
		<g:message code="inscricao.sala.label" default="Sala" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sala" name="sala.id" from="${select.app.Sala.list()}" optionKey="id" required="" value="${inscricaoInstance?.sala?.id}" class="many-to-one"/>

</div>

