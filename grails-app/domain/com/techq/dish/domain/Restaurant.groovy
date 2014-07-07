package com.techq.dish.domain

class Restaurant {

    static constraints = {
    }



    static hasMany = [manyDishes: Dish]



    String ownerName;








}
