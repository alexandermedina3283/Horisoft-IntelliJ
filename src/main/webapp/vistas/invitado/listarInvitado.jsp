
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<table class="table">
    <tr>
        <td>Invitado número</td>
        <td>Nombre</td>
        <td>Apellidos</td>
        <td>Identificación</td>
        <td>Número Inscripción</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="invitado" items="${lista}">
        <tr>

            <td><c:out value="${invitado.idInvitado}"></c:out></td>
            <td><c:out value="${invitado.nombreInvitado}"></c:out></td>
            <td><c:out value="${invitado.apellidoInvitado}"></c:out></td>
            <td><c:out value="${invitado.identificacionInvitado}"></c:out></td>
            <td><c:out value="${invitado.idInscripcion}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/InvitadoServlet?opcion=eliminar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/InvitadoServlet?opcion=editar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>

