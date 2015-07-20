import admin.Permissao;
import admin.Usuario;
import admin.UsuarioPermissao;

class BootStrap {

    def init = { servletContext ->
		
		Permissao operador = Permissao.findByAuthority("ROLE_ADMIN")
		if(operador == null){
			operador = new Permissao(authority: "ROLE_ADMIN").save(flush:true)
		}
	
		Usuario admin = Usuario.findByUsername("admin")
		if(admin == null){
			admin = new Usuario(username: "admin", password: "admin", enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true)
		}
		
		if(UsuarioPermissao.findByUsuarioAndPermissao(admin,operador) == null){
			new UsuarioPermissao(usuario: admin, permissao: operador).save(flush:true)
		}
    }
	
	
    def destroy = {
    }
}
