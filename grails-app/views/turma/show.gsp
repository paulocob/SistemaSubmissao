
<%@ page import="submitleda.Turma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'turma.label', default: 'Turma')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-turma" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-turma" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list turma">
			
				<g:if test="${turmaInstance?.alunos}">
				<li class="fieldcontain">
					<span id="alunos-label" class="property-label"><g:message code="turma.alunos.label" default="Alunos" /></span>
					
						<g:each in="${turmaInstance.alunos}" var="a">
						<span class="property-value" aria-labelledby="alunos-label"><g:link controller="aluno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.nomeDaTurma}">
				<li class="fieldcontain">
					<span id="nomeDaTurma-label" class="property-label"><g:message code="turma.nomeDaTurma.label" default="Nome Da Turma" /></span>
					
						<span class="property-value" aria-labelledby="nomeDaTurma-label"><g:fieldValue bean="${turmaInstance}" field="nomeDaTurma"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.periodo}">
				<li class="fieldcontain">
					<span id="periodo-label" class="property-label"><g:message code="turma.periodo.label" default="Periodo" /></span>
					
						<span class="property-value" aria-labelledby="periodo-label"><g:fieldValue bean="${turmaInstance}" field="periodo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.professor}">
				<li class="fieldcontain">
					<span id="professor-label" class="property-label"><g:message code="turma.professor.label" default="Professor" /></span>
					
						<span class="property-value" aria-labelledby="professor-label"><g:fieldValue bean="${turmaInstance}" field="professor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.roteiro}">
				<li class="fieldcontain">
					<span id="roteiro-label" class="property-label"><g:message code="turma.roteiro.label" default="Roteiro" /></span>
					
						<g:each in="${turmaInstance.roteiro}" var="r">
						<span class="property-value" aria-labelledby="roteiro-label"><g:link controller="roteiro" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:turmaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${turmaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
