<nav id="Navbar" class="navbar navbar-fixed-top navbar-inverse" role="navigation">
	<div class="container-fluid">
	
	    <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        		<span class="sr-only">Toggle navigation</span>
        		<span class="icon-bar"></span>
	           	<span class="icon-bar"></span>
	           	<span class="icon-bar"></span>
			</button>	
		</div>
		
		<sec:ifLoggedIn>
		<div class="collapse navbar-collapse navbar-ex1-collapse" role="navigation">
			<ul class="nav navbar-nav">
			<li>
				<a href="${createLink(uri: '/')}"><i class="glyphicon glyphicon-home"></i> Inicio 
				
				</a>
			</li>
				<sec:ifAnyGranted roles="ROLE_ADMIN">				
					<g:render template="/layouts/_menu/controller"/>				
				</sec:ifAnyGranted>	
			</ul>
	    	<ul class="nav navbar-nav navbar-right">
	 			<!--<g:render template="/layouts/_menu/search"/>--> 												
				<g:render template="/layouts/_menu/info"/>
				<g:render template="/layouts/_menu/user"/>																												
		    </ul>			
		</div>
		</sec:ifLoggedIn>	
		
		<sec:ifNotLoggedIn>
			<ul class="nav navbar-nav navbar-right">												
				<g:render template="/layouts/_menu/info"/>																											
		    </ul>	
		</sec:ifNotLoggedIn>	
			
	</div>
</nav>
