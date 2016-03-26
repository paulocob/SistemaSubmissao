package submitleda



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SubmissaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Submissao.list(params), model:[submissaoInstanceCount: Submissao.count()]
    }

    def show(Submissao submissaoInstance) {
        respond submissaoInstance
    }

    def create() {
        respond new Submissao(params)
    }

    @Transactional
    def save(Submissao submissaoInstance) {
        if (submissaoInstance == null) {
            notFound()
            return
        }

        if (submissaoInstance.hasErrors()) {
            respond submissaoInstance.errors, view:'create'
            return
        }

        submissaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'submissao.label', default: 'Submissao'), submissaoInstance.id])
                redirect submissaoInstance
            }
            '*' { respond submissaoInstance, [status: CREATED] }
        }
    }

    def edit(Submissao submissaoInstance) {
        respond submissaoInstance
    }

    @Transactional
    def update(Submissao submissaoInstance) {
        if (submissaoInstance == null) {
            notFound()
            return
        }

        if (submissaoInstance.hasErrors()) {
            respond submissaoInstance.errors, view:'edit'
            return
        }

        submissaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Submissao.label', default: 'Submissao'), submissaoInstance.id])
                redirect submissaoInstance
            }
            '*'{ respond submissaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Submissao submissaoInstance) {

        if (submissaoInstance == null) {
            notFound()
            return
        }

        submissaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Submissao.label', default: 'Submissao'), submissaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'submissao.label', default: 'Submissao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
