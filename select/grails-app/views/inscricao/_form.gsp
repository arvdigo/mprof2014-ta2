<%@ page import="select.app.Inscricao" %>

<div class="form-group ${hasErrors(bean: inscricaoInstance, field: 'pessoa', 'error')} required">
	<label for="pessoa" class="control-label">
		<g:message code="inscricao.pessoa.label" default="Pessoa" />
	</label>
	<g:textField class="form-control" id="pessoa" name="pessoa.id"  value="${inscricaoInstance?.pessoa}" readonly="true"/>
</div>

<div class="form-group ${hasErrors(bean: inscricaoInstance, field: 'oferta', 'error')} required">
	<label for="oferta" class="control-label">
		<g:message code="inscricao.oferta.label" default="Oferta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="oferta" name="oferta.id" from="${select.app.Oferta.list()}" optionKey="id" required="" value="${inscricaoInstance?.oferta?.id}" />
</div>

