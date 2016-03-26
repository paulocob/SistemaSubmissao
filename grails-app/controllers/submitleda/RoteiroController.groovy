package submitleda



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RoteiroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Roteiro.list(params), model:[roteiroInstanceCount: Roteiro.count()]
    }

    def show(Roteiro roteiroInstance) {
        respond roteiroInstance
    }

    def create() {
        respond new Roteiro(params)
    }

    @Transactional
    def save(Roteiro roteiroInstance) {
        if (roteiroInstance == null) {
            notFound()
            return
        }

        if (roteiroInstance.hasErrors()) {
            respond roteiroInstance.errors, view:'create'
            return
        }

        roteiroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'roteiro.label', default: 'Roteiro'), roteiroInstance.id])
                redirect roteiroInstance
            }
            '*' { respond roteiroInstance, [status: CREATED] }
        }
    }

    def edit(Roteiro roteiroInstance) {
        respond roteiroInstance
    }

    @Transactional
    def update(Roteiro roteiroInstance) {
        if (roteiroInstance == null) {
            notFound()
            return
        }

        if (roteiroInstance.hasErrors()) {
            respond roteiroInstance.errors, view:'edit'
            return
        }

        roteiroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Roteiro.label', default: 'Roteiro'), roteiroInstance.id])
                redirect roteiroInstance
            }
            '*'{ respond roteiroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Roteiro roteiroInstance) {

        if (roteiroInstance == null) {
            notFound()
            return
        }

        roteiroInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Roteiro.label', default: 'Roteiro'), roteiroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'roteiro.label', default: 'Roteiro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
