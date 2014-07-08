<%@ page import="com.techq.dish.domain.Recommend" %>



<div class="fieldcontain ${hasErrors(bean: recommendInstance, field: 'dish', 'error')} required">
	<label for="dish">
		<g:message code="recommend.dish.label" default="Dish" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dish" name="dish.id" from="${com.techq.dish.domain.Dish.list()}" optionKey="id" required="" value="${recommendInstance?.dish?.id}" class="many-to-one"/>
</div>

