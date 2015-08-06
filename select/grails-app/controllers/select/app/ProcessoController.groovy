package select.app



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProcessoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Processo.list(params), model:[processoInstanceCount: Processo.count()]
    }

    def show(Processo processoInstance) {
        respond processoInstance
    }

    def create() {
        respond new Processo(params)
    }

    @Transactional
    def save(Processo processoInstance) {
        if (processoInstance == null) {
            notFound()
            return
        }

        if (processoInstance.hasErrors()) {
            respond processoInstance.errors, view:'create'
            return
        }

        processoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'processo.label', default: 'Processo'), processoInstance.id])
                redirect processoInstance
            }
            '*' { respond processoInstance, [status: CREATED] }
        }
    }

    def edit(Processo processoInstance) {
        respond processoInstance
    }

    @Transactional
    def update(Processo processoInstance) {
        if (processoInstance == null) {
            notFound()
            return
        }

        if (processoInstance.hasErrors()) {
            respond processoInstance.errors, view:'edit'
            return
        }

        processoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Processo.label', default: 'Processo'), processoInstance.id])
                redirect processoInstance
            }
            '*'{ respond processoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Processo processoInstance) {

        if (processoInstance == null) {
            notFound()
            return
        }

		try {
			processoInstance.delete flush:true
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
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Processo.label', default: 'Processo'), processoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'processo.label', default: 'Processo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
