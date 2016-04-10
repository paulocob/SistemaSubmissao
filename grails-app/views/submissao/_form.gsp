<%@ page import="submitleda.Submissao" %>



<div class="fieldcontain ${hasErrors(bean: submissaoInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="submissao.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${submitleda.Aluno.list()}" optionKey="id" required="" value="${submissaoInstance?.aluno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: submissaoInstance, field: 'dataEnvio', 'error')} required">
	<label for="dataEnvio">
		<g:message code="submissao.dataEnvio.label" default="Data Envio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataEnvio" precision="day"  value="${submissaoInstance?.dataEnvio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: submissaoInstance, field: 'roteiro', 'error')} required">
	<label for="roteiro">
		<g:message code="submissao.roteiro.label" default="Roteiro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roteiro" name="roteiro.id" from="${submitleda.Roteiro.list()}" optionKey="id" required="" value="${submissaoInstance?.roteiro?.id}" class="many-to-one"/>

</div>

