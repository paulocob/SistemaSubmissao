<%@ page import="submitleda.Turma" %>



<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'alunos', 'error')} ">
	<label for="alunos">
		<g:message code="turma.alunos.label" default="Alunos" />
		
	</label>
	<g:select name="alunos" from="${submitleda.Aluno.list()}" multiple="multiple" optionKey="id" size="5" value="${turmaInstance?.alunos*.id}" class="many-to-many"/>

</div>

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

<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'roteiro', 'error')} ">
	<label for="roteiro">
		<g:message code="turma.roteiro.label" default="Roteiro" />
		
	</label>
	<g:select name="roteiro" from="${submitleda.Roteiro.list()}" multiple="multiple" optionKey="id" size="5" value="${turmaInstance?.roteiro*.id}" class="many-to-many"/>

</div>

