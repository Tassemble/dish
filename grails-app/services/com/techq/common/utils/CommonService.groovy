package com.techq.common.utils


import groovyx.net.http.HTTPBuilder
import groovyx.net.http.ContentType
import grails.transaction.Transactional

@Transactional
class CommonService {

    def serviceMethod() {

    }


    def post() {
        def http = new HTTPBuilder('http://restmirror.appspot.com/')
        def postBody = [name: 'bob', title: 'construction worker'] // will be url-encoded

        http.post(path: '/', body: postBody,
                requestContentType: ContentType.URLENC) { resp ->

            println "POST Success: ${resp.statusLine}"
            assert resp.statusLine.statusCode == 201
        }


    }


}
