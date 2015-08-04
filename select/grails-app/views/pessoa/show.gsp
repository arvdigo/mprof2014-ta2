
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
			
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.usuario.label" default="Usuario" /></td>
					<td valign="top" class="value"><g:link controller="usuario" action="show" id="${pessoaInstance?.usuario?.id}">${pessoaInstance?.usuario?.id?.encodeAsHTML()} - ${pessoaInstance?.usuario?.username?.encodeAsHTML()}</g:link></td>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.cpf.label" default="Cpf" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="cpf"/></td>
				</tr>			
						
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.nome.label" default="Nome" /></td>
					<g:if test="${pessoaInstance?.nome}">	
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="nome"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.nome_mae.label" default="Nome da Mãe" /></td>
					<g:if test="${pessoaInstance?.nome_mae}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="nome_mae"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.rg.label" default="Rg" /></td>
					<g:if test="${pessoaInstance?.rg}">	
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="rg"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.estado_civil.label" default="Estado civil" /></td>
					<g:if test="${pessoaInstance?.estado_civil}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="estado_civil"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.data_nascimento.label" default="Data de nascimento" /></td>
					<g:if test="${pessoaInstance?.data_nascimento}">
						<td valign="top" class="value"><g:formatDate format="dd/MM/yyyy" date="${pessoaInstance?.data_nascimento}" />></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.nacionalidade.label" default="Nacionalidade" /></td>
					<g:if test="${pessoaInstance?.nacionalidade}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="nacionalidade"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.sexo.label" default="Sexo" /></td>
					<g:if test="${pessoaInstance?.sexo}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="sexo"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.telefone.label" default="Telefone" /></td>
					<g:if test="${pessoaInstance?.telefone}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="telefone"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.email.label" default="Email" /></td>
					<g:if test="${pessoaInstance?.email}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="email"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
					
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.cep.label" default="Cep" /></td>
					<g:if test="${pessoaInstance?.cep}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="cep"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>			
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.logradouro.label" default="Logradouro" /></td>
					<g:if test="${pessoaInstance?.logradouro}">	
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="logradouro"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
			
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.numero.label" default="Numero" /></td>
					<g:if test="${pessoaInstance?.numero}">	
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="numero"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.complemento.label" default="Complemento" /></td>
					<g:if test="${pessoaInstance?.complemento}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="complemento"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.bairro.label" default="Bairro" /></td>
					<g:if test="${pessoaInstance?.bairro}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="bairro"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
				
				<g:if test="${pessoaInstance?.cidade}">
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.cidade.label" default="Cidade" /></td>
					<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="cidade"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>
							
				<tr class="prop">
					<td valign="top" class="name"><g:message code="pessoa.estado.label" default="Estado" /></td>
					<g:if test="${pessoaInstance?.estado}">
						<td valign="top" class="value"><g:fieldValue bean="${pessoaInstance}" field="estado"/></td>
					</g:if>
					<g:else>
						<td valign="top" class="name">-</td>
					</g:else>
				</tr>														
			
			</tbody>
			</table>
		</section>
	</body>
</html>
