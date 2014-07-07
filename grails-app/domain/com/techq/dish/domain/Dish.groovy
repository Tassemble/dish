package com.techq.dish.domain

class Dish {


    String pictureUrl;




    String name;


    static belongsTo = [restaurant: Restaurant]



    static constraints = {


    }

    // JSON definition of the User object
    static {
        grails.converters.JSON.registerObjectMarshaller(Dish) {
            // you can filter here the key-value pairs to output:
            return it.properties.findAll { k, v -> k != 'id' }
        }

    }


}
