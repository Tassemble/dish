package com.techq.dish.domain

import com.google.gson.Gson

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.*

@Transactional(readOnly = true)
class DishController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    Gson gson = new Gson();

    def json = {
        render Dish.list() as JSON // Using the Controller's dynamic render method
    }


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Dish.list(params), model: [dishInstanceCount: Dish.count()]
    }

    def show(Dish dish) {
//        render contentType: 'application/json', text: dishInstance;
        def map = ["pictureUrl": dish.pictureUrl, "name":dish.name, "restaurant" : ["name" : dish.restaurant.name]]
//        render contentType: 'application/json', text: gson.toJson(map);
        render  map as JSON
//        respond dishInstance
    }

    def showWithJson(Dish dishInstance) {
        render  dishInstance as JSON
    }

    def create() {
        respond new Dish(params)
    }

    @Transactional
    def save(Dish dishInstance) {
        if (dishInstance == null) {
            notFound()
            return
        }

        if (dishInstance.hasErrors()) {
            respond dishInstance.errors, view: 'create'
            return
        }

        dishInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dishInstance.label', default: 'Dish'), dishInstance.id])
                redirect dishInstance
            }
            '*' { respond dishInstance, [status: CREATED] }
        }
    }

    def edit(Dish dishInstance) {
        respond dishInstance
    }

    @Transactional
    def update(Dish dishInstance) {
        if (dishInstance == null) {
            notFound()
            return
        }

        if (dishInstance.hasErrors()) {
            respond dishInstance.errors, view: 'edit'
            return
        }

        dishInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Dish.label', default: 'Dish'), dishInstance.id])
                redirect dishInstance
            }
            '*' { respond dishInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Dish dishInstance) {

        if (dishInstance == null) {
            notFound()
            return
        }

        dishInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Dish.label', default: 'Dish'), dishInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dishInstance.label', default: 'Dish'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
