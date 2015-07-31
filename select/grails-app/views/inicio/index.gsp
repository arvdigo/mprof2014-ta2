<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title>Sistema de Inscrição - SELECT</title>		
	</head>
	<body>
		<sec:ifAnyGranted roles="ROLE_ADMIN">
			<!-- Conteúdo do Administrador -->
		
		</sec:ifAnyGranted>
		
		<sec:ifAnyGranted roles="ROLE_CANDIDATO">
			<!-- Conteúdo do Administrador -->
			
			 <div class="container-fluid">
			    <div class="row">
			      <div class="col-sm-5">
					<div class="well">
						<h2>Dados Pessoais</h2>
    					<table class="table">
						<tbody>
							<p>${pessoa?.id}</p>						    		    					
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
						
							
						
							<g:if test="${pessoa?.inscricoes}">
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pessoa.inscricoes.label" default="Inscricoes" /></td>
								<g:each in="${pessoa.inscricoes}" var="i">
									<td valign="top" class="value"><g:link controller="inscricao" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></td>
								</g:each>
							</tr>
							</g:if>
						
							<g:if test="${pessoa?.usuario}">
							<tr class="prop">
								<td valign="top" class="name"><g:message code="pessoa.usuario.label" default="Usuario" /></td>
								<td valign="top" class="value"><g:link controller="usuario" action="show" id="${pessoa?.usuario?.id}">${pessoa?.usuario?.encodeAsHTML()}</g:link></td>
							</tr>
							</g:if>
    				</tbody>
    				</table>
    				</div>
			      </div>
			      <div class="col-sm-7">
			      	<div class="row">			      
					<div class="panel panel-info">					
						<div class="panel-heading">
							Processo Inscritos
						</div>
						<table class="ajax table table-bordered margin-top-medium">
							<thead>
								<tr>					
									<th><g:message code="inscricao.oferta.processo.descricao" default="Processo" /></th>
									<th><g:message code="inscricao.oferta.curso.nome" default="Curso" /></th>
									<th><g:message code="inscricao.oferta.curso.nivel" default="Nível" /></th>
									<th><g:message code="inscricao.confirmado" default="Confirmado" /></th>
									<th><g:message code="inscricao.sala" default="Local de Prova" /></th>
									<th><g:message code="inscricao.acao" default="Ação" /></th>
								</tr>
							</thead>
							<tbody>
							<g:each in="${inscricao}" status="i" var="list">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
									<td>${list.oferta.processo.descricao}</td>
									<td>${list.oferta.curso.nome}</td>
									<td>${list.oferta.curso.nivel}</td>
									<td>
										<g:if test="${list.confirmado}">
											SIM
										</g:if>
										<g:else test="${list.confirmado}">
											Não
										</g:else>
									</td>
									<td>
										<g:if test="${list.sala}">
											${list.sala.campus.nome}: ${list.sala.descricao}</td>
										</g:if>
									<td>
									<g:link action="show" id="${inscricao.id}"></g:link></td>
								</tr>
							</g:each>
							</tbody>
						</table>
						<div>
							<g:paginate maxsteps="0" controller="inicio"  action="index" total="${countInscricao}" />
						</div>
					</div>
					</div>
					<div class="panel panel-success">
						<div class="panel-heading">
							Processos Abertos
						</div>
					</div>
					<div class="panel panel-danger">
						<div class="panel-heading">
							Processos Encerrados
						</div>
					</div>
			      </div>
			    </div>
			
			    <div class="row">
			      
			    </div>
		</div>
			  
		<script>		  
		$(document).ready(function() {
		    setupGridAjax();
		});
		
		// Turn all sorting and paging links into ajax requests for the grid
		function setupGridAjax() {
		    $(".teste").find(".pagination a").on('click', function(event) {
		        event.preventDefault();
		        var url = $(this).attr('href');
		
		        var grid = $("table.ajax");
		        $(grid).html($("#spinner").html());
		
		        $.ajax({
		            type: 'GET',
		            url: url,
		            success: function(data) {
		                $(grid).fadeOut('fast', function() {$(this).html(data).fadeIn('slow');});
		            }
		        });
		    });
		}
		</script>	
		
		</sec:ifAnyGranted>
			
	</body>
</html>
