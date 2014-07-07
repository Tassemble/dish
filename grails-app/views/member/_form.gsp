<%@ page import="com.techq.dish.domain.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'loginId', 'error')} ">
	<label for="loginId">
		<g:message code="member.loginId.label" default="Login Id" />
		
	</label>
	<g:textArea name="loginId" cols="40" rows="5" maxlength="255" value="${memberInstance?.loginId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'loginType', 'error')} ">
	<label for="loginType">
		<g:message code="member.loginType.label" default="Login Type" />
		
	</label>
	<g:textField name="loginType" value="${memberInstance?.loginType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'memberType', 'error')} ">
	<label for="memberType">
		<g:message code="member.memberType.label" default="Member Type" />
		
	</label>
	<g:textField name="memberType" value="${memberInstance?.memberType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'largePic', 'error')} ">
	<label for="largePic">
		<g:message code="member.largePic.label" default="Large Pic" />
		
	</label>
	<g:textField name="largePic" value="${memberInstance?.largePic}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'nickname', 'error')} ">
	<label for="nickname">
		<g:message code="member.nickname.label" default="Nickname" />
		
	</label>
	<g:textField name="nickname" value="${memberInstance?.nickname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="member.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${memberInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'phoneNumber', 'error')} ">
	<label for="phoneNumber">
		<g:message code="member.phoneNumber.label" default="Phone Number" />
		
	</label>
	<g:textField name="phoneNumber" value="${memberInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'smallPic', 'error')} ">
	<label for="smallPic">
		<g:message code="member.smallPic.label" default="Small Pic" />
		
	</label>
	<g:textField name="smallPic" value="${memberInstance?.smallPic}"/>
</div>

