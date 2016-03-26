<%@ page import="submitleda.Turma" %>



<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'nomeDaTurma', 'error')} required">
	<label for="nomeDaTurma">
		<g:message code="turma.nomeDaTurma.label" default="Nome Da Turma" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeDaTurma" required="" value="${turmaInstance?.nomeDaTurma}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'periodo', 'error')} required">
	<label for="periodo">
		<g:message code="turma.periodo.label" default="Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="periodo" required="" value="${turmaInstance?.periodo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'professor', 'error')} required">
	<label for="professor">
		<g:message code="turma.professor.label" default="Professor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="professor" required="" value="${turmaInstance?.professor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'turmaId', 'error')} required">
	<label for="turmaId">
		<g:message code="turma.turmaId.label" default="Turma Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="turmaId" type="number" value="${turmaInstance.turmaId}" required=""/>

</div>

