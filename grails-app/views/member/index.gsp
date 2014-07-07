
<%@ page import="com.techq.dish.domain.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>

			</ul>
		</div>
		<div id="list-member" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="loginId" title="${message(code: 'member.loginId.label', default: 'Login Id')}" />
					
						<g:sortableColumn property="loginType" title="${message(code: 'member.loginType.label', default: 'Login Type')}" />
					
						<g:sortableColumn property="memberType" title="${message(code: 'member.memberType.label', default: 'Member Type')}" />
					
						<g:sortableColumn property="largePic" title="${message(code: 'member.largePic.label', default: 'Large Pic')}" />
					
						<g:sortableColumn property="nickname" title="${message(code: 'member.nickname.label', default: 'Nickname')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'member.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${memberInstanceList}" status="i" var="memberInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${memberInstance.id}">${fieldValue(bean: memberInstance, field: "loginId")}</g:link></td>
					
						<td>${fieldValue(bean: memberInstance, field: "loginType")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "memberType")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "largePic")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "nickname")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memberInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
