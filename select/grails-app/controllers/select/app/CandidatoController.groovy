package select.app



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandidatoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Candidato.list(params), model:[candidatoInstanceCount: Candidato.count()]
    }

    def show(Candidato candidatoInstance) {
        respond candidatoInstance
    }

    def create() {
        respond new Candidato(params)
    }

    @Transactional
    def save(Candidato candidatoInstance) {
        if (candidatoInstance == null) {
            notFound()
            return
        }

        if (candidatoInstance.hasErrors()) {
            respond candidatoInstance.errors, view:'create'
            return
        }

        candidatoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candidato.label', default: 'Candidato'), candidatoInstance.id])
                redirect candidatoInstance
            }
            '*' { respond candidatoInstance, [status: CREATED] }
        }
    }

    def edit(Candidato candidatoInstance) {
        respond candidatoInstance
    }

    @Transactional
    def update(Candidato candidatoInstance) {
        if (candidatoInstance == null) {
            notFound()
            return
        }

        if (candidatoInstance.hasErrors()) {
            respond candidatoInstance.errors, view:'edit'
            return
        }

        candidatoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Candidato.label', default: 'Candidato'), candidatoInstance.id])
                redirect candidatoInstance
            }
            '*'{ respond candidatoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Candidato candidatoInstance) {

        if (candidatoInstance == null) {
            notFound()
            return
        }

        candidatoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Candidato.label', default: 'Candidato'), candidatoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candidato.label', default: 'Candidato'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
