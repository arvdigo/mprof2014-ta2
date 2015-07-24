<%@ page import="select.app.Curso" %>

<div class="form-group ${hasErrors(bean: cursoInstance, field: 'nome', 'error')} required">
	<label for="nome" class="control-label">
		<g:message code="curso.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="nome" required="" value="${cursoInstance?.nome}"/>

</div>

<div class="form-group ${hasErrors(bean: cursoInstance, field: 'nivel', 'error')} required">
	<label for="nivel" class="control-label">
		<g:message code="curso.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="nivel" required="" value="${cursoInstance?.nivel}"/>

</div>
