package select.app



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.*

@Transactional(readOnly = true)
class InscricaoController {
	
	def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Inscricao.list(params), model:[inscricaoInstanceCount: Inscricao.count()]
    }

    def show(Inscricao inscricaoInstance) {
        respond inscricaoInstance
    }

    def create() {
        respond new Inscricao(params)
    }

    @Transactional
    def save(Inscricao inscricaoInstance) {
        if (inscricaoInstance == null) {
            notFound()
            return
        }

        if (inscricaoInstance.hasErrors()) {
            respond inscricaoInstance.errors, view:'create'
            return
        }

        inscricaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), inscricaoInstance.id])
                redirect inscricaoInstance
            }
            '*' { respond inscricaoInstance, [status: CREATED] }
        }
    }

    def edit(Inscricao inscricaoInstance) {
        respond inscricaoInstance
    }

    @Transactional
    def update(Inscricao inscricaoInstance) {
        if (inscricaoInstance == null) {
            notFound()
            return
        }

        if (inscricaoInstance.hasErrors()) {
            respond inscricaoInstance.errors, view:'edit'
            return
        }

        inscricaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Inscricao.label', default: 'Inscricao'), inscricaoInstance.id])
                redirect inscricaoInstance
            }
            '*'{ respond inscricaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Inscricao inscricaoInstance) {

        if (inscricaoInstance == null) {
            notFound()
            return
        }

		try {
			inscricaoInstance.delete flush:true
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
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Inscricao.label', default: 'Inscricao'), inscricaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	@Secured(['ROLE_CANDIDATO'])
	def criarInscricao(Processo processo) {
		//busca candidato
		def user = springSecurityService.currentUser
		Pessoa pessoa = Pessoa.findByUsuario(user)
		
		if (pessoa == null) {
			flash.error = 'Usuário não é uma pessoa no sistema'
		}
		
		Inscricao inscricao = new Inscricao()
		inscricao.pessoa = pessoa
		
		render(view:'criarInscricao', 
			   model:[inscricao:inscricao, processo:processo]
		)
	}
	
	def alterarInscricao(Inscricao inscricao) {
		Processo processo = inscricao.oferta.processo
		render(view:'alterarInscricao', 
			   model:[inscricao:inscricao, processo:processo]
		)
	}
		
	@Secured(['ROLE_CANDIDATO'])
	@Transactional
	def updateInscricao(Inscricao inscricao) {
		if (inscricao == null) {
			notFound()
			return
		}

		if (inscricao.hasErrors()) {
			respond inscricao.errors, view:'alterarInscricao'
			return
		}

		inscricao.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'Inscricao.label', default: 'Inscricao'), inscricaoInstance.id])
				redirect inscricao
			}
			'*'{ respond inscricao, [status: OK] }
		}
	}

	
	@Secured(['ROLE_CANDIDATO'])
	@Transactional
    def saveInscricao(Inscricao inscricao) {
        if (inscricao == null) {
            notFound()
            return
        }			

        if (inscricao.hasErrors()) {
            respond inscricao.errors, view:'criarInscricao'
            return
        }
		
		inscricao.data = new Date()
        inscricao.save(flush:true)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'inscricao.label', default: 'Inscricao'), inscricao.id])
                redirect inscricao
            }
            '*' { respond inscricao, [status: CREATED] }
        }
    }
	
	def confirmarInscricao() {
		respond new Inscricao(params)
	}
	
	def findInscricoes() {
		def pessoa = Pessoa.findByCpf(params.cpf)
		def inscricoes = pessoa?.inscricoes	as JSON	

		render inscricoes 		
		
	}
	
}
