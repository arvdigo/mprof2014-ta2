package select.app



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OfertaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Oferta.list(params), model:[ofertaInstanceCount: Oferta.count()]
    }

    def show(Oferta ofertaInstance) {
        respond ofertaInstance
    }

    def create() {
        respond new Oferta(params)
    }

    @Transactional
    def save(Oferta ofertaInstance) {
        if (ofertaInstance == null) {
            notFound()
            return
        }

        if (ofertaInstance.hasErrors()) {
            respond ofertaInstance.errors, view:'create'
            return
        }

        ofertaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'oferta.label', default: 'Oferta'), ofertaInstance.id])
                redirect ofertaInstance
            }
            '*' { respond ofertaInstance, [status: CREATED] }
        }
    }

    def edit(Oferta ofertaInstance) {
        respond ofertaInstance
    }

    @Transactional
    def update(Oferta ofertaInstance) {
        if (ofertaInstance == null) {
            notFound()
            return
        }

        if (ofertaInstance.hasErrors()) {
            respond ofertaInstance.errors, view:'edit'
            return
        }

        ofertaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Oferta.label', default: 'Oferta'), ofertaInstance.id])
                redirect ofertaInstance
            }
            '*'{ respond ofertaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Oferta ofertaInstance) {

        if (ofertaInstance == null) {
            notFound()
            return
        }

		try {
			ofertaInstance.delete flush:true
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
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Oferta.label', default: 'Oferta'), ofertaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'oferta.label', default: 'Oferta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
