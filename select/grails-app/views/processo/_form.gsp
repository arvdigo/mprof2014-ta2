<%@ page import="select.app.Processo" %>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'ano', 'error')} required">
	<label for="ano" class="control-label">
		<g:message code="processo.ano.label" default="Ano" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="ano" type="number" value="${processoInstance.ano}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'descricao', 'error')} required">
	<label for="descricao" class="control-label">
		<g:message code="processo.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descricao" required="" value="${processoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'edital', 'error')} required">
	<label for="edital" class="control-label">
		<g:message code="processo.edital.label" default="Edital" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="edital" required="" value="${processoInstance?.edital}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'data_inicial', 'error')} required">
	<label for="data_inicial" class="control-label">
		<g:message code="processo.data_inicial.label" default="Datainicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="datepicker form-control" type="none" name="data_inicial" precision="day"  value="${processoInstance?.data_inicial}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'data_final', 'error')}">
	<label for="data_final" class="control-label">
		<g:message code="processo.data_final.label" default="Datafinal" />
	</label>
	<g:field class="datepicker form-control" type="none"  name="data_final" precision="day"  value="${processoInstance?.data_final}"  />
</div>

