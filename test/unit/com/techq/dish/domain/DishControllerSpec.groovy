package com.techq.dish.domain



import grails.test.mixin.*
import spock.lang.*

@TestFor(DishController)
@Mock(Dish)
class DishControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.dishInstanceList
        model.dishInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.dishInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        def dish = new Dish()
        dish.validate()
        controller.save(dish)

        then: "The create view is rendered again with the correct model"
        model.dishInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        dish = new Dish(params)

        controller.save(dish)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/dish/show/1'
        controller.flash.message != null
        Dish.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def dish = new Dish(params)
        controller.show(dish)

        then: "A model is populated containing the domain instance"
        model.dishInstance == dish
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def dish = new Dish(params)
        controller.edit(dish)

        then: "A model is populated containing the domain instance"
        model.dishInstance == dish
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/dish/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def dish = new Dish()
        dish.validate()
        controller.update(dish)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.dishInstance == dish

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        dish = new Dish(params).save(flush: true)
        controller.update(dish)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/dish/show/$dish.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/dish/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def dish = new Dish(params).save(flush: true)

        then: "It exists"
        Dish.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(dish)

        then: "The instance is deleted"
        Dish.count() == 0
        response.redirectedUrl == '/dish/index'
        flash.message != null
    }
}
