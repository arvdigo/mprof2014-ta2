<%@ page import="select.app.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="curso.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${cursoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="curso.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nivel" required="" value="${cursoInstance?.nivel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'ofertas', 'error')} ">
	<label for="ofertas">
		<g:message code="curso.ofertas.label" default="Ofertas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cursoInstance?.ofertas?}" var="o">
    <li><g:link controller="oferta" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="oferta" action="create" params="['curso.id': cursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'oferta.label', default: 'Oferta')])}</g:link>
</li>
</ul>


</div>

