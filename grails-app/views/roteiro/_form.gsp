<%@ page import="submitleda.Roteiro" %>



<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'dataNormal', 'error')} required">
	<label for="dataNormal">
		<g:message code="roteiro.dataNormal.label" default="Data Normal" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNormal" precision="day"  value="${roteiroInstance?.dataNormal}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'roteiroId', 'error')} required">
	<label for="roteiroId">
		<g:message code="roteiro.roteiroId.label" default="Roteiro Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="roteiroId" type="number" value="${roteiroInstance.roteiroId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="roteiro.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${roteiroInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'turmaId', 'error')} required">
	<label for="turmaId">
		<g:message code="roteiro.turmaId.label" default="Turma Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="turmaId" type="number" value="${roteiroInstance.turmaId}" required=""/>

</div>

