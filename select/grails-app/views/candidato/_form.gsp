<%@ page import="select.app.Candidato" %>



<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="candidato.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${candidatoInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="candidato.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${candidatoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'nome_mae', 'error')} required">
	<label for="nome_mae">
		<g:message code="candidato.nome_mae.label" default="Nomemae" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome_mae" required="" value="${candidatoInstance?.nome_mae}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="candidato.rg.label" default="Rg" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rg" required="" value="${candidatoInstance?.rg}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="candidato.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" required="" value="${candidatoInstance?.logradouro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="candidato.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" required="" value="${candidatoInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="candidato.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${candidatoInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="candidato.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" required="" value="${candidatoInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'complemento', 'error')} required">
	<label for="complemento">
		<g:message code="candidato.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${candidatoInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="candidato.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numero" required="" value="${candidatoInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="candidato.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${candidatoInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'estado_civil', 'error')} required">
	<label for="estado_civil">
		<g:message code="candidato.estado_civil.label" default="Estadocivil" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado_civil" required="" value="${candidatoInstance?.estado_civil}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="candidato.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${candidatoInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'data_nascimento', 'error')} required">
	<label for="data_nascimento">
		<g:message code="candidato.data_nascimento.label" default="Datanascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_nascimento" precision="day"  value="${candidatoInstance?.data_nascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'cidade_nascimento', 'error')} required">
	<label for="cidade_nascimento">
		<g:message code="candidato.cidade_nascimento.label" default="Cidadenascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade_nascimento" required="" value="${candidatoInstance?.cidade_nascimento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'nacionalidade', 'error')} required">
	<label for="nacionalidade">
		<g:message code="candidato.nacionalidade.label" default="Nacionalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nacionalidade" required="" value="${candidatoInstance?.nacionalidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="candidato.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${candidatoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="candidato.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sexo" required="" value="${candidatoInstance?.sexo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'inscricoes', 'error')} ">
	<label for="inscricoes">
		<g:message code="candidato.inscricoes.label" default="Inscricoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${candidatoInstance?.inscricoes?}" var="i">
    <li><g:link controller="inscricao" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="inscricao" action="create" params="['candidato.id': candidatoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'inscricao.label', default: 'Inscricao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: candidatoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="candidato.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${select.app.Usuario.list()}" optionKey="id" required="" value="${candidatoInstance?.usuario?.id}" class="many-to-one"/>

</div>

