
<%@ page import="submitleda.Roteiro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'roteiro.label', default: 'Roteiro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-roteiro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-roteiro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list roteiro">
			
				<g:if test="${roteiroInstance?.dataNormal}">
				<li class="fieldcontain">
					<span id="dataNormal-label" class="property-label"><g:message code="roteiro.dataNormal.label" default="Data Normal" /></span>
					
						<span class="property-value" aria-labelledby="dataNormal-label"><g:formatDate date="${roteiroInstance?.dataNormal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.roteiroId}">
				<li class="fieldcontain">
					<span id="roteiroId-label" class="property-label"><g:message code="roteiro.roteiroId.label" default="Roteiro Id" /></span>
					
						<span class="property-value" aria-labelledby="roteiroId-label"><g:fieldValue bean="${roteiroInstance}" field="roteiroId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="roteiro.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${roteiroInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.turmaId}">
				<li class="fieldcontain">
					<span id="turmaId-label" class="property-label"><g:message code="roteiro.turmaId.label" default="Turma Id" /></span>
					
						<span class="property-value" aria-labelledby="turmaId-label"><g:fieldValue bean="${roteiroInstance}" field="turmaId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:roteiroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${roteiroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
