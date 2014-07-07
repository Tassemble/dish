<%@ page import="com.techq.dish.domain.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'imageFile', 'error')} required">
	<label for="imageFile">
		<g:message code="image.imageFile.label" default="Image File" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="imageFile" name="imageFile" />
</div>

