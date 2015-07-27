class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/login"(view:"/login/auth")
		"/denied"(view:"/login/denied")				
		"/login/ajaxSuccess"(view:"/index")

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
