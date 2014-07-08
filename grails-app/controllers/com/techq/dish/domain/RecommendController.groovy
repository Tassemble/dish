package com.techq.dish.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RecommendController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Recommend.list(params), model: [recommendInstanceCount: Recommend.count()]
    }

    def show(Recommend recommendInstance) {
        respond recommendInstance
    }

    def create() {
        respond new Recommend(params)
    }

    @Transactional
    def save(Recommend recommendInstance) {
        if (recommendInstance == null) {
            notFound()
            return
        }

        if (recommendInstance.hasErrors()) {
            respond recommendInstance.errors, view: 'create'
            return
        }

        recommendInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recommendInstance.label', default: 'Recommend'), recommendInstance.id])
                redirect recommendInstance
            }
            '*' { respond recommendInstance, [status: CREATED] }
        }
    }

    def edit(Recommend recommendInstance) {
        respond recommendInstance
    }

    @Transactional
    def update(Recommend recommendInstance) {
        if (recommendInstance == null) {
            notFound()
            return
        }

        if (recommendInstance.hasErrors()) {
            respond recommendInstance.errors, view: 'edit'
            return
        }

        recommendInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Recommend.label', default: 'Recommend'), recommendInstance.id])
                redirect recommendInstance
            }
            '*' { respond recommendInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Recommend recommendInstance) {

        if (recommendInstance == null) {
            notFound()
            return
        }

        recommendInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Recommend.label', default: 'Recommend'), recommendInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recommendInstance.label', default: 'Recommend'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
