<%@ page import="submitleda.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'matricula', 'error')} required">
	<label for="matricula">
		<g:message code="aluno.matricula.label" default="Matricula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="matricula" required="" value="${alunoInstance?.matricula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${alunoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'turmaId', 'error')} required">
	<label for="turmaId">
		<g:message code="aluno.turmaId.label" default="Turma Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="turmaId" type="number" value="${alunoInstance.turmaId}" required=""/>

</div>

