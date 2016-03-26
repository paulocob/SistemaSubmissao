
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
					
						<g:sortableColumn property="alunoId" title="${message(code: 'submissao.alunoId.label', default: 'Aluno Id')}" />
					
						<g:sortableColumn property="dataEnvio" title="${message(code: 'submissao.dataEnvio.label', default: 'Data Envio')}" />
					
						<g:sortableColumn property="roteiroId" title="${message(code: 'submissao.roteiroId.label', default: 'Roteiro Id')}" />
					
						<g:sortableColumn property="submissaoId" title="${message(code: 'submissao.submissaoId.label', default: 'Submissao Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${submissaoInstanceList}" status="i" var="submissaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${submissaoInstance.id}">${fieldValue(bean: submissaoInstance, field: "alunoId")}</g:link></td>
					
						<td><g:formatDate date="${submissaoInstance.dataEnvio}" /></td>
					
						<td>${fieldValue(bean: submissaoInstance, field: "roteiroId")}</td>
					
						<td>${fieldValue(bean: submissaoInstance, field: "submissaoId")}</td>
					
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
