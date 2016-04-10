
<%@ page import="submitleda.Submissao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'submissao.label', default: 'Submissao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-submissao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-submissao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list submissao">
			
				<g:if test="${submissaoInstance?.aluno}">
				<li class="fieldcontain">
					<span id="aluno-label" class="property-label"><g:message code="submissao.aluno.label" default="Aluno" /></span>
					
						<span class="property-value" aria-labelledby="aluno-label"><g:link controller="aluno" action="show" id="${submissaoInstance?.aluno?.id}">${submissaoInstance?.aluno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${submissaoInstance?.dataEnvio}">
				<li class="fieldcontain">
					<span id="dataEnvio-label" class="property-label"><g:message code="submissao.dataEnvio.label" default="Data Envio" /></span>
					
						<span class="property-value" aria-labelledby="dataEnvio-label"><g:formatDate date="${submissaoInstance?.dataEnvio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${submissaoInstance?.horaEnvio}">
				<li class="fieldcontain">
					<span id="horaEnvio-label" class="property-label"><g:message code="submissao.horaEnvio.label" default="Hora Envio" /></span>
					
						<span class="property-value" aria-labelledby="horaEnvio-label"><g:formatDate date="${submissaoInstance?.horaEnvio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${submissaoInstance?.roteiro}">
				<li class="fieldcontain">
					<span id="roteiro-label" class="property-label"><g:message code="submissao.roteiro.label" default="Roteiro" /></span>
					
						<span class="property-value" aria-labelledby="roteiro-label"><g:link controller="roteiro" action="show" id="${submissaoInstance?.roteiro?.id}">${submissaoInstance?.roteiro?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:submissaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${submissaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
