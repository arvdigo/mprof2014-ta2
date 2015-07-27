
<%@ page import="select.app.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="show-pessoa" class="first">
			<table class="table">
			<tbody>
			
				<g:if test="${pessoaInstance?.cpf}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.cpf.label" default="Cpf" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="cpf"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.nome}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.nome.label" default="Nome" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="nome"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.nome_mae}">
				<tr class="prop">
					<td valign="top" class="name">g:message code="pessoa.nome_mae.label" default="Nomemae" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="nome_mae"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.rg}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.rg.label" default="Rg" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="rg"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.logradouro}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.logradouro.label" default="Logradouro" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="logradouro"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.cidade}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.cidade.label" default="Cidade" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="cidade"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.estado}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.estado.label" default="Estado" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="estado"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.cep}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.cep.label" default="Cep" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="cep"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.complemento}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.complemento.label" default="Complemento" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="complemento"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.numero}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.numero.label" default="Numero" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="numero"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.bairro}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.bairro.label" default="Bairro" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="bairro"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.estado_civil}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.estado_civil.label" default="Estadocivil" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="estado_civil"/></td>
					
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.telefone}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.telefone.label" default="Telefone" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="telefone"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.data_nascimento}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.data_nascimento.label" default="Datanascimento" /></td>
					<td valign="top" class="value"><g:formatDate date="${pessoaInstance?.data_nascimento}" /></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.cidade_nascimento}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.cidade_nascimento.label" default="Cidadenascimento" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="cidade_nascimento"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.nacionalidade}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.nacionalidade.label" default="Nacionalidade" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="nacionalidade"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.email}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.email.label" default="Email" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="email"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.sexo}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.sexo.label" default="Sexo" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="sexo"/></td>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.inscricoes}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.inscricoes.label" default="Inscricoes" /></td>
					<g:each in="${pessoaInstance.inscricoes}" var="i">
						<td valign="top" class="value"><g:link controller="inscricao" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></td>
					</g:each>
				</tr>
				</g:if>
			
				<g:if test="${pessoaInstance?.usuario}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.usuario.label" default="Usuario" /></td>
					<td valign="top" class="value"><g:link controller="usuario" action="show" id="${pessoaInstance?.usuario?.id}">${pessoaInstance?.usuario?.encodeAsHTML()}</g:link></td>
				</tr>
				</g:if>
			
			</tbody>
			</table>
		</section>
	</body>
</html>
