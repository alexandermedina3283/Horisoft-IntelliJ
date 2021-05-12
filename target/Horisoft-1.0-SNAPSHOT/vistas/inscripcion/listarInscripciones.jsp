
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<table class="table">
    <tr>
        <td>Número inscripción</td>
        <td>Fecha inscripción</td>
        <td>Fecha inicio</td>
        <td>Hora inicio</td>
        <td>Fecha finalización</td>
        <td>Hora finalización</td>
        <td>Estado inscripción</td>
        <td>ID residente</td>
        <td>ID actividad</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="inscripcion" items="${lista}">
        <tr>

            <td><c:out value="${inscripcion.idInscripcion}"></c:out></td>
            <td><c:out value="${inscripcion.fechaInscripcion}"></c:out></td>
            <td><c:out value="${inscripcion.fechaEntrada}"></c:out></td>
            <td><c:out value="${inscripcion.horaEntrada}"></c:out></td>
            <td><c:out value="${inscripcion.fechaSalida}"></c:out></td>
            <td><c:out value="${inscripcion.horaSalida}"></c:out></td>
            <td><c:out value="${inscripcion.estadoInscripcion}"></c:out></td>
            <td><c:out value="${inscripcion.idResidente}"></c:out></td>
            <td><c:out value="${inscripcion.idActividad}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/InscripcionController?opcion=eliminar&idInscripcion=<c:out value="${inscripcion.idInscripcion}"></c:out>">Eliminar</a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/InscripcionController?opcion=editar&idInscripcion=<c:out value="${inscripcion.idInscripcion}"></c:out>">Editar</a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>
