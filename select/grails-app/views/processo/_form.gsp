<%@ page import="select.app.Processo" %>



<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'ano', 'error')} required">
	<label for="ano">
		<g:message code="processo.ano.label" default="Ano" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ano" type="number" value="${processoInstance.ano}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'data_final', 'error')} required">
	<label for="data_final">
		<g:message code="processo.data_final.label" default="Datafinal" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_final" precision="day"  value="${processoInstance?.data_final}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'data_inicial', 'error')} required">
	<label for="data_inicial">
		<g:message code="processo.data_inicial.label" default="Datainicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_inicial" precision="day"  value="${processoInstance?.data_inicial}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="processo.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${processoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'edital', 'error')} required">
	<label for="edital">
		<g:message code="processo.edital.label" default="Edital" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="edital" required="" value="${processoInstance?.edital}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: processoInstance, field: 'ofertas', 'error')} ">
	<label for="ofertas">
		<g:message code="processo.ofertas.label" default="Ofertas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${processoInstance?.ofertas?}" var="o">
    <li><g:link controller="oferta" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="oferta" action="create" params="['processo.id': processoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'oferta.label', default: 'Oferta')])}</g:link>
</li>
</ul>


</div>

