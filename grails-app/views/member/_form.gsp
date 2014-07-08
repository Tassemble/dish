<%@ page import="com.techq.dish.domain.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="member.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${memberInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="member.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${memberInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="member.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${memberInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'largePic', 'error')} ">
	<label for="largePic">
		<g:message code="member.largePic.label" default="Large Pic" />
		
	</label>
	<g:textField name="largePic" value="${memberInstance?.largePic}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'memberType', 'error')} ">
	<label for="memberType">
		<g:message code="member.memberType.label" default="Member Type" />
		
	</label>
	<g:textField name="memberType" value="${memberInstance?.memberType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'nickname', 'error')} ">
	<label for="nickname">
		<g:message code="member.nickname.label" default="Nickname" />
		
	</label>
	<g:textField name="nickname" value="${memberInstance?.nickname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'smallPic', 'error')} ">
	<label for="smallPic">
		<g:message code="member.smallPic.label" default="Small Pic" />
		
	</label>
	<g:textField name="smallPic" value="${memberInstance?.smallPic}"/>
</div>

