<h2>Dados Pessoais</h2>
<table class="table">
<tbody>						    		    					
	<g:if test="${pessoa?.nome}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.nome.label" default="Nome" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="nome"/></td>
	</tr>
	</g:if>															
	
	<g:if test="${pessoa?.nome_mae}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.nome_mae.label" default="Nome da mãe" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="nome_mae"/></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.cpf}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.cpf.label" default="Cpf" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="cpf"/></td>
	</tr>
	</g:if>	
	
	<g:if test="${pessoa?.rg}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.rg.label" default="Rg" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="rg"/></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.estado_civil}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.estado_civil.label" default="Estado Civil" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="estado_civil"/></td>
		
	</tr>
	</g:if>				
	
	<g:if test="${pessoa?.data_nascimento}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.data_nascimento.label" default="Data de Nascimento" /></td>
		<td valign="top" class="value"><g:formatDate date="${pessoa?.data_nascimento}" /></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.nacionalidade}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.nacionalidade.label" default="Nacionalidade" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="nacionalidade"/></td>
	</tr>
	</g:if>						
	
	<g:if test="${pessoa?.sexo}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.sexo.label" default="Sexo" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="sexo"/></td>
	</tr>
	</g:if>
		
	</tbody>
				</table>
				<h2>Contato e Endereço</h2>	
	<table class="table">
	<tbody>	
		<g:if test="${pessoa?.telefone}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.telefone.label" default="Telefone" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="telefone"/></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.email}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.email.label" default="Email" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="email"/></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.cep}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.cep.label" default="Cep" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="cep"/></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.logradouro}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.logradouro.label" default="Logradouro" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="logradouro"/></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.cidade}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.cidade.label" default="Cidade" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="cidade"/></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.estado}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.estado.label" default="Estado" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="estado"/></td>
	</tr>
	</g:if>		
	
	<g:if test="${pessoa?.complemento}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.complemento.label" default="Complemento" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="complemento"/></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.numero}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.numero.label" default="Numero" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="numero"/></td>
	</tr>
	</g:if>
	
	<g:if test="${pessoa?.bairro}">
	<tr class="prop">
		<td valign="top" class="name"><g:message code="pessoa.bairro.label" default="Bairro" /></td>
		<td valign="top" class="value"><g:fieldValue bean="${pessoa}" field="bairro"/></td>
	</tr>
	</g:if>						
</tbody>
</table>