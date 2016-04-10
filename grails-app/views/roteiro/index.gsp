
<%@ page import="submitleda.Roteiro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'roteiro.label', default: 'Roteiro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-roteiro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-roteiro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'roteiro.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="dataNormal" title="${message(code: 'roteiro.dataNormal.label', default: 'Data Normal')}" />
					
						<g:sortableColumn property="horaNormal" title="${message(code: 'roteiro.horaNormal.label', default: 'Hora Normal')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${roteiroInstanceList}" status="i" var="roteiroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${roteiroInstance.id}">${fieldValue(bean: roteiroInstance, field: "titulo")}</g:link></td>
					
						<td><g:formatDate date="${roteiroInstance.dataNormal}" /></td>
					
						<td><g:formatDate date="${roteiroInstance.horaNormal}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${roteiroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
