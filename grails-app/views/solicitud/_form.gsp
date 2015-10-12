<%@ page import="mx.gob.inr.catservicios.Solicitud" %>



<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="solicitud.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${solicitudInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="solicitud.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${solicitudInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'numeroSolicitud', 'error')} required">
	<label for="numeroSolicitud">
		<g:message code="solicitud.numeroSolicitud.label" default="Numero Solicitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroSolicitud" type="number" value="${solicitudInstance.numeroSolicitud}" required=""/>

</div>

