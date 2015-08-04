<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="pt_BR" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="pt_BR" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="pt_BR" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="pt_BR" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="pt-BR" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<g:render template="/layouts/_menu/navbar"/>
		<header id="Header" class="page-header">
			<div class="container">
			<h1 class="title"><g:layoutTitle default="${meta(name:'app.name')}" /></h1>
			</div>
		</header>
				
		<div id="Content" class="container">
			<!-- menu in one row (e.g., actions for current controller) -->
			<g:if test="${!layout_nosecondarymenu}">
				<g:render template="/layouts/_menu/menubar"/>														
			</g:if>
		
			<!-- print system messages (infos, warnings, etc) - not validation errors -->
			<g:if test="${flash.message && !layout_noflashmessage}">
				<div class="alert alert-info margin-top-small">${flash.message}</div>
			</g:if>
			<g:if test="${flash.error && !layout_noflasherror}">
				<div class="alert alert-danger margin-top-small">${flash.error}</div>
			</g:if>
					
			<!-- Show page's content -->
			<g:layoutBody />
			<g:pageProperty name="page.body" />
		</div>
			
	</body>
</html>
