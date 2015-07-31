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
			<div class="container-fluid">
			<div class="well text-center">
				Você é um usuário Administrador 
    		</div>
			</div>
		
		</sec:ifAnyGranted>
		
		<sec:ifAnyGranted roles="ROLE_CANDIDATO, ROLE_ADMIN">
			<!-- Conteúdo do Administrador -->
			
			 <div class="container-fluid">
			    <div class="row">
			      <div class="col-sm-5">
					<div class="well">
						<g:render template="dadosPessoa"/>
    				</div>
			      </div>
			      <div class="col-sm-7">
			      	<div class="row">			      
					<div class="panel panel-info">					
						<div class="panel-heading">
							Processo Inscritos
						</div>
						<g:if test="${inscricao}">
							<g:render template="gridInscritos"/>
						</g:if>
						<g:else>
							&nbsp;Nenhuma inscrição realizada no momento
						</g:else>
					</div>
					</div>
					<div class="row">
					<div class="panel panel-success">
						<div class="panel-heading">
							Processos Abertos
						</div>
						<g:if test="${processoAberto}">
							<g:render template="gridAbertos"/>
						</g:if>
						<g:else>
							&nbsp;Nenhum processo aberto
						</g:else>
					</div>
					</div>
					<div class="row">
					<div class="panel panel-danger">
						<div class="panel-heading">
							&nbsp;Processos Encerrados
						</div>
						<g:if test="${processoFechado}">
							<g:render template="gridEncerrados"/>
						</g:if>
						<g:else>
							&nbsp;Nenhum processo encerrado
						</g:else>
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
