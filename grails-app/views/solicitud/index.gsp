
<%@ page import="mx.gob.inr.catservicios.Solicitud" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'solicitud.label', default: 'Solicitud')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<r:require modules="easygrid-jqgrid-dev,export"/>
	</head>
	<body>
		<a href="#list-solicitud" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-solicitud" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'solicitud.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'solicitud.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="numeroSolicitud" title="${message(code: 'solicitud.numeroSolicitud.label', default: 'Numero Solicitud')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${solicitudInstanceList}" status="i" var="solicitudInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${solicitudInstance.id}">${fieldValue(bean: solicitudInstance, field: "descripcion")}</g:link></td>
					
						<td><g:formatDate date="${solicitudInstance.fecha}" /></td>
					
						<td>${fieldValue(bean: solicitudInstance, field: "numeroSolicitud")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${solicitudInstanceCount ?: 0}" />
			</div>
		</div>


<grid:grid name="solicitudes" addUrl="${g.createLink(controller: 'solicitud',
																										 action: 'add')}">
    <grid:set caption="Solicitudes" width="800"/>
    <grid:set col="id" formatter="f:customShowFormat" />
</grid:grid>
<grid:exportButton name="solicitudes"/>

	</body>
</html>
