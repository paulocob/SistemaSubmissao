
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
			
				<g:if test="${roteiroInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="roteiro.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${roteiroInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.dataLiberacao}">
				<li class="fieldcontain">
					<span id="dataLiberacao-label" class="property-label"><g:message code="roteiro.dataLiberacao.label" default="Data Liberacao" /></span>
					
						<span class="property-value" aria-labelledby="dataLiberacao-label"><g:formatDate date="${roteiroInstance?.dataLiberacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.dataNormal}">
				<li class="fieldcontain">
					<span id="dataNormal-label" class="property-label"><g:message code="roteiro.dataNormal.label" default="Data Normal" /></span>
					
						<span class="property-value" aria-labelledby="dataNormal-label"><g:formatDate date="${roteiroInstance?.dataNormal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.environment}">
				<li class="fieldcontain">
					<span id="environment-label" class="property-label"><g:message code="roteiro.environment.label" default="Environment" /></span>
					
						<span class="property-value" aria-labelledby="environment-label"><g:fieldValue bean="${roteiroInstance}" field="environment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.horaLiberacao}">
				<li class="fieldcontain">
					<span id="horaLiberacao-label" class="property-label"><g:message code="roteiro.horaLiberacao.label" default="Hora Liberacao" /></span>
					
						<span class="property-value" aria-labelledby="horaLiberacao-label"><g:formatDate date="${roteiroInstance?.horaLiberacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.horaNormal}">
				<li class="fieldcontain">
					<span id="horaNormal-label" class="property-label"><g:message code="roteiro.horaNormal.label" default="Hora Normal" /></span>
					
						<span class="property-value" aria-labelledby="horaNormal-label"><g:formatDate date="${roteiroInstance?.horaNormal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.submissao}">
				<li class="fieldcontain">
					<span id="submissao-label" class="property-label"><g:message code="roteiro.submissao.label" default="Submissao" /></span>
					
						<g:each in="${roteiroInstance.submissao}" var="s">
						<span class="property-value" aria-labelledby="submissao-label"><g:link controller="submissao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${roteiroInstance?.turmas}">
				<li class="fieldcontain">
					<span id="turmas-label" class="property-label"><g:message code="roteiro.turmas.label" default="Turmas" /></span>
					
						<g:each in="${roteiroInstance.turmas}" var="t">
						<span class="property-value" aria-labelledby="turmas-label"><g:link controller="turma" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
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
