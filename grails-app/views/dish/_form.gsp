<%@ page import="com.techq.dish.domain.Dish" %>



<div class="fieldcontain ${hasErrors(bean: dishInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="dish.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${dishInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: dishInstance, field: 'pictureUrl', 'error')} ">
	<label for="pictureUrl">
		<g:message code="dish.pictureUrl.label" default="Picture Url" />
		
	</label>
	<g:textField name="pictureUrl" value="${dishInstance?.pictureUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: dishInstance, field: 'restaurant', 'error')} required">
	<label for="restaurant">
		<g:message code="dish.restaurant.label" default="Restaurant" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="restaurant" name="restaurant.id" from="${com.techq.dish.domain.Restaurant.list()}" optionKey="id" required="" value="${dishInstance?.restaurant?.id}" class="many-to-one"/>
</div>

