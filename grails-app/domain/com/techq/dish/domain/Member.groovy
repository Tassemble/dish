package com.techq.dish.domain

class Member {


    transient springSecurityService
    boolean enabled = true


    String username;
    String nickname;

    String password;

    String largePic;
    String smallPic;


    String memberType;




    static constraints = {
        username blank: false, unique: true
        password blank: false
    }


    static mapping = {
        password column: '`password`'
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role } as Set
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }


}
