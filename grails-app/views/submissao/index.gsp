
<%@ page import="submitleda.Submissao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'submissao.label', default: 'Submissao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-submissao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-submissao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="submissao.aluno.label" default="Aluno" /></th>
					
						<g:sortableColumn property="dataEnvio" title="${message(code: 'submissao.dataEnvio.label', default: 'Data Envio')}" />
					
						<g:sortableColumn property="horaEnvio" title="${message(code: 'submissao.horaEnvio.label', default: 'Hora Envio')}" />
					
						<th><g:message code="submissao.roteiro.label" default="Roteiro" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${submissaoInstanceList}" status="i" var="submissaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${submissaoInstance.id}">${fieldValue(bean: submissaoInstance, field: "aluno")}</g:link></td>
					
						<td><g:formatDate date="${submissaoInstance.dataEnvio}" /></td>
					
						<td><g:formatDate date="${submissaoInstance.horaEnvio}" /></td>
					
						<td>${fieldValue(bean: submissaoInstance, field: "roteiro")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${submissaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
