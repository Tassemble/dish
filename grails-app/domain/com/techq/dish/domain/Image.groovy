package com.techq.dish.domain

class Image {

    byte[] imageFile
    static constraints = {
        // Limit upload file size to 2MB
        imageFile maxSize: 1024 * 1024 * 2
    }

}
