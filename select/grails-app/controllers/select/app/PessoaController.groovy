package select.app



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import select.app.Usuario;
import select.app.UsuarioPermissao;

@Transactional(readOnly = true)
class PessoaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pessoa.list(params), model:[pessoaInstanceCount: Pessoa.count()]
    }

    def show(Pessoa pessoaInstance) {
        respond pessoaInstance
    }

    def create() {
        respond new Pessoa(params)
    }

    @Transactional
    def save(Pessoa pessoaInstance) {
        if (pessoaInstance == null) {
            notFound()
            return
        }

        if (pessoaInstance.hasErrors()) {
            respond pessoaInstance.errors, view:'create'
            return
        }

        pessoaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pessoa.label', default: 'Pessoa'), pessoaInstance.id])
                redirect pessoaInstance
            }
            '*' { respond pessoaInstance, [status: CREATED] }
        }
    }

    def edit(Pessoa pessoaInstance) {
        respond pessoaInstance
    }

    @Transactional
    def update(Pessoa pessoaInstance) {
        if (pessoaInstance == null) {
            notFound()
            return
        }

        if (pessoaInstance.hasErrors()) {
            respond pessoaInstance.errors, view:'edit'
            return
        }

        pessoaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pessoa.label', default: 'Pessoa'), pessoaInstance.id])
                redirect pessoaInstance
            }
            '*'{ respond pessoaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pessoa pessoaInstance) {

        if (pessoaInstance == null) {
            notFound()
            return
        }

		try {
			pessoaInstance.delete flush:true
		} catch(org.springframework.dao.DataIntegrityViolationException | Exception e) {
			request.withFormat {
				form multipartForm {
					println(e)
					flash.message = "Não foi possivel remover o campus porque o mesmo esta associado a outro registro."
					flash.error = e.localizedMessage
					redirect action:"index", method:"GET"
				}
				'*'{ render status: NO_CONTENT }
			}
			return
		}

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pessoa.label', default: 'Pessoa'), pessoaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pessoa.label', default: 'Pessoa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	/*
	** Metodos para auto cadastro de candidatos
	*/	
	@Secured(['permitAll'])
	def novaConta() {
		respond new Pessoa(params)
	}
	
	@Secured(['permitAll'])
	@Transactional
	def saveNovaConta(Pessoa pessoaInstance) {			
		
		if (!params.senha.equals(params.confirmarSenha)) {
			flash.error = 'Senha e a confirmação de senha não são iguais'
			respond view:'novaConta'
		}
		
		if (pessoaInstance == null) {
			notFound()
			return
		}	

		
		pessoaInstance.withTransaction{status ->
            try{		
				Permissao permissao = Permissao.findByAuthority("ROLE_CANDIDATO")
				Usuario usuario = new Usuario(username: params.cpf, password:params.senha, enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush:true, failOnError:true)
				UsuarioPermissao usuarioPermissao = new UsuarioPermissao(usuario: usuario, permissao: permissao).save(flush:true, failOnError:true)
				pessoaInstance.usuario = usuario
				pessoaInstance.save(flush:true, failOnError:true)				
			}catch(Exception exp){
				pessoaInstance.errors.reject(
					'pessoaInstance.cpf.inuse',
					["${params.cpf}"].toArray() as Object[],
					'O CPF [{0}] já esta cadastrado!!!'
				)				
				status.setRollbackOnly()
			}
		}	

		if (pessoaInstance.hasErrors()) {
			respond pessoaInstance.errors, view:'novaConta'
			return
		}
		
		//flash.message = 'Conta criado com sucesso. Use seu cpf para fazer login'

		render(view:"confirmaNovaConta")

	}
}
