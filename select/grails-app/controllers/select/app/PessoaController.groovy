package select.app



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PessoaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pessoa.list(params), model:[candidatoInstanceCount: Pessoa.count()]
    }

    def show(Pessoa candidatoInstance) {
        respond candidatoInstance
    }

    def create() {
        respond new Pessoa(params)
    }

    @Transactional
    def save(Pessoa candidatoInstance) {
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

    def edit(Pessoa candidatoInstance) {
        respond candidatoInstance
    }

    @Transactional
    def update(Pessoa candidatoInstance) {
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
    def delete(Pessoa candidatoInstance) {

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
