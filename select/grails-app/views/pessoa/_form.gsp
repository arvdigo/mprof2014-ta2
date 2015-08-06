<%@page import="select.EstadoCivil"%>
<%@page import="select.Sexo"%>
<%@page import="select.app.Pessoa" %>

<fieldset>
<legend>Identificação:</legend>

	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'usuario', 'error')} required">
		<label for="sexo" class="control-label">
			<g:message code="pessoa.usuario.label" default="Usuario" />
			<span class="required-indicator">*</span>
		</label>
		<g:select class="form-control" name="usuario" required="" noSelection="${['null':'Selecione...']}" from="${select.app.Usuario.list()}" optionValue="${{ usuario -> "${usuario.id} - ${usuario.username}" }}" value="${pessoaInstance?.usuario?.id}"/>
	</div>	

	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'cpf', 'error')} required">
		<label for="cpf" class="control-label">
			<g:message code="pessoa.cpf.label" default="CPF" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="cpf" required="" value="${pessoaInstance?.cpf}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
		<label for="nome" class="control-label">
			<g:message code="pessoa.nome.label" default="Nome" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="nome" required="" value="${pessoaInstance?.nome}"/>
	</div>
		
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'nome_mae', 'error')} required">
		<label for="nome_mae" class="control-label">
			<g:message code="pessoa.nome_mae.label" default="Nome da mãe" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="nome_mae" required="" value="${pessoaInstance?.nome_mae}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'rg', 'error')} required">
		<label for="rg" class="control-label">
			<g:message code="pessoa.rg.label" default="RG" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="rg" required="" value="${pessoaInstance?.rg}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'estado_civil', 'error')} required">
		<label for="estado_civil" class="control-label">
			<g:message code="pessoa.estado_civil.label" default="Estadocivil" />
			<span class="required-indicator">*</span>
		</label>
		<g:select class="form-control" name="estado_civil" required="" noSelection="${['null':'Selecione...']}" from="${EstadoCivil}" value="${pessoaInstance?.estado_civil}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'data_nascimento', 'error')} required">
		<label for="data_nascimento" class="control-label">
			<g:message code="pessoa.data_nascimento.label" default="Data Nascimento" />
			<span class="required-indicator">*</span>
		</label>
		<g:field class="form-control datepicker" type="none" name="data_nascimento" precision="day"  value="${pessoaInstance?.data_nascimento}"  />
	</div>
	
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'nacionalidade', 'error')} required">
		<label for="nacionalidade" class="control-label">
			<g:message code="pessoa.nacionalidade.label" default="Nacionalidade" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="nacionalidade" required="" value="${pessoaInstance?.nacionalidade}"/>
	
	</div>
		
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'sexo', 'error')} required">
		<label for="sexo" class="control-label">
			<g:message code="pessoa.sexo.label" default="Sexo" />
			<span class="required-indicator">*</span>
		</label>
		<g:select class="form-control" name="sexo" required="" noSelection="${['null':'Selecione...']}" from="${Sexo}" value="${pessoaInstance?.sexo}"/>
	</div>	
</fieldset>


<fieldset>
<legend>Contato:</legend>

	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'telefone', 'error')} required">
		<label for="telefone" class="control-label">
			<g:message code="pessoa.telefone.label" default="Telefone" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="telefone" required="" value="${pessoaInstance?.telefone}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'email', 'error')} required">
		<label for="email" class="control-label">
			<g:message code="pessoa.email.label" default="Email" />
			<span class="required-indicator">*</span>
		</label>
		<g:field class="form-control" type="email" name="email" required="" value="${pessoaInstance?.email}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'cep', 'error')} required">
		<label for="cep" class="control-label">
			<g:message code="pessoa.cep.label" default="Cep" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="cep" required="" onchange="updateEndereco(this.value)" value="${pessoaInstance?.cep}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'logradouro', 'error')} required">
		<label for="logradouro" class="control-label">
			<g:message code="pessoa.logradouro.label" default="Logradouro" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="logradouro" required="" value="${pessoaInstance?.logradouro}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'numero', 'error')} required">
		<label for="numero" class="control-label">
			<g:message code="pessoa.numero.label" default="Numero" />
		</label>
		<g:textField class="form-control" name="numero" required="" value="${pessoaInstance?.numero}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'complemento', 'error')} required">
		<label for="complemento" class="control-label">
			<g:message code="pessoa.complemento.label" default="Complemento" />
		</label>
		<g:textField class="form-control" name="complemento" required="" value="${pessoaInstance?.complemento}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'bairro', 'error')} required">
		<label for="bairro" class="control-label">
			<g:message code="pessoa.bairro.label" default="Bairro" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="bairro" required="" value="${pessoaInstance?.bairro}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'cidade', 'error')} required">
		<label for="cidade" class="control-label">
			<g:message code="pessoa.cidade.label" default="Cidade" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="cidade" required="" value="${pessoaInstance?.cidade}"/>
	</div>
	
	<div class="form-group ${hasErrors(bean: pessoaInstance, field: 'estado', 'error')} required">
		<label for="estado" class="control-label">
			<g:message code="pessoa.estado.label" default="Estado" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="form-control" name="estado" required="" value="${pessoaInstance?.estado}"/>
	</div>

</fieldset>
<g:javascript>
    function updateEndereco(cep) {
    	$.getJSON('http://api.postmon.com.br/v1/cep/' + cep ,               
        	function(data) {
            	$('#logradouro').val(data.logradouro)
            	$('#bairro').val(data.bairro)
            	$('#cidade').val(data.cidade)
            	$('#estado').val(data.estado)
            });
    };
</g:javascript>
