
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/InvitadoServlet?opcion=crearInvitado" role="button">Crear nuevo registro</a>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Invitado número</th>
        <th scope="col">Nombre</th>
        <th scope="col">Apellidos</th>
        <th scope="col">Identificación</th>
        <th scope="col">Número Inscripción</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>

    <c:forEach var="invitado" items="${lista}">
        <tr>

            <td><c:out value="${invitado.idInvitado}"></c:out></td>
            <td><c:out value="${invitado.nombreInvitado}"></c:out></td>
            <td><c:out value="${invitado.apellidoInvitado}"></c:out></td>
            <td><c:out value="${invitado.identificacionInvitado}"></c:out></td>
            <td><c:out value="${invitado.idInscripcion}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/InvitadoServlet?opcion=eliminar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/InvitadoServlet?opcion=editar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>

