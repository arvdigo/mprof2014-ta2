<%@ page import="select.app.Campus" %>



<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="campus.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${campusInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="campus.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" required="" value="${campusInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="campus.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" required="" value="${campusInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="campus.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${campusInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="campus.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${campusInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'complemento', 'error')} ">
	<label for="complemento">
		<g:message code="campus.complemento.label" default="Complemento" />
		
	</label>
	<g:textField name="complemento" value="${campusInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="campus.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${campusInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="campus.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${campusInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: campusInstance, field: 'ofertas', 'error')} ">
	<label for="ofertas">
		<g:message code="campus.ofertas.label" default="Ofertas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${campusInstance?.ofertas?}" var="o">
    <li><g:link controller="oferta" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="oferta" action="create" params="['campus.id': campusInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'oferta.label', default: 'Oferta')])}</g:link>
</li>
</ul>


</div>

