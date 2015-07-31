class UrlMappings {

	static mappings = {
		
		"/"	{
			controller	= 'inicio'
			action		= { 'index' }
			view		= { 'index' }
		}
		
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/login"(view:"/login/auth")
		"/denied"(view:"/login/denied")				
		"/login/ajaxSuccess"(view:"/inicio/index")

        "500"(view:'/error')
	}
}
