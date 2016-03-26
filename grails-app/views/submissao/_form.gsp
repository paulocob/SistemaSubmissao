<%@ page import="submitleda.Submissao" %>



<div class="fieldcontain ${hasErrors(bean: submissaoInstance, field: 'alunoId', 'error')} required">
	<label for="alunoId">
		<g:message code="submissao.alunoId.label" default="Aluno Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="alunoId" type="number" value="${submissaoInstance.alunoId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: submissaoInstance, field: 'dataEnvio', 'error')} required">
	<label for="dataEnvio">
		<g:message code="submissao.dataEnvio.label" default="Data Envio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataEnvio" precision="day"  value="${submissaoInstance?.dataEnvio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: submissaoInstance, field: 'roteiroId', 'error')} required">
	<label for="roteiroId">
		<g:message code="submissao.roteiroId.label" default="Roteiro Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="roteiroId" type="number" value="${submissaoInstance.roteiroId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: submissaoInstance, field: 'submissaoId', 'error')} required">
	<label for="submissaoId">
		<g:message code="submissao.submissaoId.label" default="Submissao Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="submissaoId" type="number" value="${submissaoInstance.submissaoId}" required=""/>

</div>

