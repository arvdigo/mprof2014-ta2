<%@ page import="select.app.Inscricao" %>


<div class="form-group ${hasErrors(bean: inscricaoInstance, field: 'pessoa', 'error')} required">
	<label for="pessoa">
		<g:message code="inscricao.pessoa.label" default="Pessoa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="pessoa" name="pessoa.id" from="${select.app.Pessoa.list()}" optionKey="id" optionValue="${{ pessoa -> "${pessoa.id} - ${pessoa.nome}" }}" required="" value="${inscricaoInstance?.pessoa?.id}"/>
</div>

<div class="form-group ${hasErrors(bean: inscricaoInstance, field: 'oferta', 'error')} required">
	<label for="oferta">
		<g:message code="inscricao.oferta.label" default="Oferta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="oferta" name="oferta.id" from="${select.app.Oferta.list()}" optionKey="id" optionValue="${{ oferta -> "${oferta.id} - ${oferta.processo.descricao} - ${oferta.curso.nome}/${oferta.curso.nivel} - Campus: ${oferta.campus.nome}" }}" required="" value="${inscricaoInstance?.oferta?.id}" />
</div>

<div class="form-group ${hasErrors(bean: inscricaoInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="inscricao.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="nota" type="none" value="${fieldValue(bean: inscricaoInstance, field: 'nota')}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: inscricaoInstance, field: 'sala', 'error')} ">
	<label for="sala">
		<g:message code="inscricao.sala.label" default="Sala" />
	</label>
	<g:select class="form-control" id="sala" name="sala.id" from="${select.app.Sala.list()}" optionKey="id" optionValue="${{ sala -> "${sala.id} - ${sala.descricao} - ${sala.campus.nome}" }}" value="${inscricaoInstance?.sala?.id}" noSelection="['null': '']"/>
</div>

<div class="form-group ${hasErrors(bean: inscricaoInstance, field: 'data', 'error')} ">
	<label for="data">
		<g:message code="inscricao.data.label" default="Data" />	
	</label>
	<g:field class="datepicker form-control" name="data" type="none"  value="${inscricaoInstance?.data}" />
</div>

<div class="checkbox form-group ${hasErrors(bean: inscricaoInstance, field: 'confirmado', 'error')} ">
	<label for="confirmado">
		<g:checkBox name="confirmado" value="${inscricaoInstance?.confirmado}" />
		<g:message code="inscricao.confirmado.label" default="Confirmado" />	
	</label>
</div>

