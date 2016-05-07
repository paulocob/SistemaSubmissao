<%@ page import="submitleda.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="30" required="" value="${alunoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'matricula', 'error')} required">
	<label for="matricula">
		<g:message code="aluno.matricula.label" default="Matricula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="matricula" type="number" value="${alunoInstance.matricula}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="aluno.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${alunoInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="aluno.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${alunoInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'submissoes', 'error')} ">
	<label for="submissoes">
		<g:message code="aluno.submissoes.label" default="Submissoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alunoInstance?.submissoes?}" var="s">
    <li><g:link controller="submissao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="submissao" action="create" params="['aluno.id': alunoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'submissao.label', default: 'Submissao')])}</g:link>
</li>
</ul>


</div>

