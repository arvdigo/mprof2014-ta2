<%--<ul class="nav pull-right">--%>
	<li class="dropdown">
	
	<sec:ifLoggedIn>

		<a class="dropdown-toggle" role="button" data-toggle="dropdown" data-target="#" href="#">
			<!-- TODO: Only show menu items based on permissions (e.g., Guest has no account page) -->
			<i class="glyphicon glyphicon-user icon-white"></i>
			${sec.username()} <b class="caret"></b>
		</a>
		<ul class="dropdown-menu" role="menu">
			<!-- TODO: Only show menu items based on permissions -->
			<li class=""><a href="${createLink(uri: '/')}">
				<i class="glyphicon glyphicon-user"></i>
				perfil
			</a></li>
			
			<li class="divider"></li>
			<li class="logoutt"><a href="${createLink(uri: '/login/auth')}">
				<i class="glyphicon glyphicon-off"></i>
				Sair
			</a></li>
		</ul>

	</sec:ifLoggedIn>

	</li>
<%--</ul>--%>
<script type='text/javascript'>
	$('.logoutt').click(function() {
		$.post("${createLink(uri: '/logout')}");
	});
	
</script>
