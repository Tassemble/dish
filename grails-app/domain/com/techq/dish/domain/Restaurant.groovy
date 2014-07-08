package com.techq.dish.domain

class Restaurant {

    static constraints = {
    }



    static hasMany = [manyDishes: Dish]
//    static belongsTo = [owner: Member]

    String name;










}
