<%@ page import="submitleda.Roteiro" %>



<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'dataNormal', 'error')} required">
	<label for="dataNormal">
		<g:message code="roteiro.dataNormal.label" default="Data Normal" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNormal" precision="day"  value="${roteiroInstance?.dataNormal}"  />

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

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="roteiro.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${roteiroInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roteiroInstance, field: 'turmas', 'error')} ">
	<label for="turmas">
		<g:message code="roteiro.turmas.label" default="Turmas" />
		
	</label>
	

</div>

