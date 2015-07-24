class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/login"(view:"/login/auth")
		"/denied"(view:"/login/denied")

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
