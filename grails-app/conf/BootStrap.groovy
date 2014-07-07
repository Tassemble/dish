import com.techq.dish.domain.Member
import com.techq.dish.domain.Role
import com.techq.dish.domain.UserRole



class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def testUser = new Member(username: 'me', password: 'password').save(flush: true);

        UserRole.create(testUser, adminRole, true)

//        assert Member.count() == 1
//        assert Role.count() == 2
//        assert UserRole.count() == 1


    }
    def destroy = {
    }
}
