class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/member/login"(controller: "member", action: "login")

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
