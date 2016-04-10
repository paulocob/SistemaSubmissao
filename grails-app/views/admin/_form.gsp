<%@ page import="submitleda.Admin" %>



<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="admin.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" maxlength="8" required="" value="${adminInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="admin.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="senha" maxlength="10" required="" value="${adminInstance?.senha}"/>

</div>

