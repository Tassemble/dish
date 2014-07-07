<%@ page import="com.techq.dish.domain.Restaurant" %>



<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'manyDishes', 'error')} ">
	<label for="manyDishes">
		<g:message code="restaurant.manyDishes.label" default="Many Dishes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${restaurantInstance?.manyDishes?}" var="m">
    <li><g:link controller="dish" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="dish" action="create" params="['restaurant.id': restaurantInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'dish.label', default: 'Dish')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: restaurantInstance, field: 'ownerName', 'error')} ">
	<label for="ownerName">
		<g:message code="restaurant.ownerName.label" default="Owner Name" />
		
	</label>
	<g:textField name="ownerName" value="${restaurantInstance?.ownerName}"/>
</div>

