<%@ page import="select.app.Inscricao" %>

<div class="form-group ${hasErrors(bean: inscricao, field: 'pessoa', 'error')} required">
	<label for="pessoa" class="control-label">
		<g:message code="inscricao.pessoa.label" default="Pessoa" />
	</label>
	<g:textField class="form-control" id="pessoa" name="pessoa.id"  value="${inscricao?.pessoa?.id} " readonly="true"/>
</div>

<div class="form-group ${hasErrors(bean: inscricao, field: 'processo', 'error')} required">
	<label for="processo" class="control-label">
		<g:message code="oferta.processo.label" default="Processo" />
	</label>
	<g:textField class="form-control" id="processo" name="processo.id" value="${processo?.id}" readonly="true"/>
</div>

<div class="form-group ${hasErrors(bean: inscricao, field: 'oferta', 'error')} required">
	<label for="oferta" class="control-label">
		<g:message code="inscricao.oferta.label" default="Oferta" />
		<span class="required-indicator">*</span>
	</label>	
	<g:each in="${select.app.Oferta.findAllByProcesso(processo)}" status="i" var="listOferta">
		<div class="checkbox">
			<label>
				<g:if test="${Inscricao.findByOfertaAndPessoa(listOferta, inscricao.pessoa)}">
					<g:radio name="oferta" value="${listOferta.id}" disabled="true" />
					Código:${listOferta.id}  -  Curso:${listOferta.curso.nome}  - nível:${listOferta.curso.nivel}  -   Campus:${listOferta.campus.nome}  -  INSCRITO
				</g:if>
				<g:else>
					<g:radio name="oferta" value="${listOferta.id}" />
					Código:${listOferta.id}  -  Curso:${listOferta.curso.nome}  - nível:${listOferta.curso.nivel}  -   Campus:${listOferta.campus.nome}
				</g:else>
				
			</label>
		</div>
	</g:each>
</div>
