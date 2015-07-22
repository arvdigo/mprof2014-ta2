<%@ page import="select.app.Sala" %>



<div class="fieldcontain ${hasErrors(bean: salaInstance, field: 'campus', 'error')} required">
	<label for="campus">
		<g:message code="sala.campus.label" default="Campus" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="campus" name="campus.id" from="${select.app.Campus.list()}" optionKey="id" required="" value="${salaInstance?.campus?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: salaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="sala.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${salaInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: salaInstance, field: 'inscricoes', 'error')} ">
	<label for="inscricoes">
		<g:message code="sala.inscricoes.label" default="Inscricoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${salaInstance?.inscricoes?}" var="i">
    <li><g:link controller="inscricao" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="inscricao" action="create" params="['sala.id': salaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'inscricao.label', default: 'Inscricao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: salaInstance, field: 'vagas', 'error')} required">
	<label for="vagas">
		<g:message code="sala.vagas.label" default="Vagas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="vagas" type="number" value="${salaInstance.vagas}" required=""/>

</div>

