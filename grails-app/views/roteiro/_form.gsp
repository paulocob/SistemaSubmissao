<%@ page import="submitleda.Roteiro" %>



<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="roteiro.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" maxlength="30" required="" value="${roteiroInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'dataLiberacao', 'error')} required">
	<label for="dataLiberacao">
		<g:message code="roteiro.dataLiberacao.label" default="Data Liberacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataLiberacao" precision="day"  value="${roteiroInstance?.dataLiberacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'dataNormal', 'error')} required">
	<label for="dataNormal">
		<g:message code="roteiro.dataNormal.label" default="Data Normal" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNormal" precision="day"  value="${roteiroInstance?.dataNormal}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'environment', 'error')} required">
	<label for="environment">
		<g:message code="roteiro.environment.label" default="Environment" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="environment" required="" value="${roteiroInstance?.environment}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'horaLiberacao', 'error')} required">
	<label for="horaLiberacao">
		<g:message code="roteiro.horaLiberacao.label" default="Hora Liberacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="horaLiberacao" precision="minute"  value="${roteiroInstance?.horaLiberacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'horaNormal', 'error')} required">
	<label for="horaNormal">
		<g:message code="roteiro.horaNormal.label" default="Hora Normal" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="horaNormal" precision="minute"  value="${roteiroInstance?.horaNormal}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'submissao', 'error')} ">
	<label for="submissao">
		<g:message code="roteiro.submissao.label" default="Submissao" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${roteiroInstance?.submissao?}" var="s">
    <li><g:link controller="submissao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="submissao" action="create" params="['roteiro.id': roteiroInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'submissao.label', default: 'Submissao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'turmas', 'error')} ">
	<label for="turmas">
		<g:message code="roteiro.turmas.label" default="Turmas" />
		
	</label>
	

</div>

