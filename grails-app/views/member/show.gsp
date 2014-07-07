
<%@ page import="com.techq.dish.domain.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-member" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list member">
			
				<g:if test="${memberInstance?.loginId}">
				<li class="fieldcontain">
					<span id="loginId-label" class="property-label"><g:message code="member.loginId.label" default="Login Id" /></span>
					
						<span class="property-value" aria-labelledby="loginId-label"><g:fieldValue bean="${memberInstance}" field="loginId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.loginType}">
				<li class="fieldcontain">
					<span id="loginType-label" class="property-label"><g:message code="member.loginType.label" default="Login Type" /></span>
					
						<span class="property-value" aria-labelledby="loginType-label"><g:fieldValue bean="${memberInstance}" field="loginType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.memberType}">
				<li class="fieldcontain">
					<span id="memberType-label" class="property-label"><g:message code="member.memberType.label" default="Member Type" /></span>
					
						<span class="property-value" aria-labelledby="memberType-label"><g:fieldValue bean="${memberInstance}" field="memberType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.largePic}">
				<li class="fieldcontain">
					<span id="largePic-label" class="property-label"><g:message code="member.largePic.label" default="Large Pic" /></span>
					
						<span class="property-value" aria-labelledby="largePic-label"><g:fieldValue bean="${memberInstance}" field="largePic"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.nickname}">
				<li class="fieldcontain">
					<span id="nickname-label" class="property-label"><g:message code="member.nickname.label" default="Nickname" /></span>
					
						<span class="property-value" aria-labelledby="nickname-label"><g:fieldValue bean="${memberInstance}" field="nickname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="member.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${memberInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="member.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${memberInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.smallPic}">
				<li class="fieldcontain">
					<span id="smallPic-label" class="property-label"><g:message code="member.smallPic.label" default="Small Pic" /></span>
					
						<span class="property-value" aria-labelledby="smallPic-label"><g:fieldValue bean="${memberInstance}" field="smallPic"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:memberInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${memberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
