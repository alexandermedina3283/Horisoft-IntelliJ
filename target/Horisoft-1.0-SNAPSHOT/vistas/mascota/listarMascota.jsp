
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=crearMascota" role="button">Crear nuevo registro</a>

<table class="table">
    <tr>
        <td>Número mascota</td>
        <td>Nombre</td>
        <td>Clase</td>
        <td>Apartamento</td>
        <td>Torre</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="mascota" items="${lista}">
        <tr>

            <td><c:out value="${mascota.idMascota}"></c:out></td>
            <td><c:out value="${mascota.nombre}"></c:out></td>
            <td><c:out value="${mascota.clase}"></c:out></td>
            <td><c:out value="${mascota.apartamento}"></c:out></td>
            <td><c:out value="${mascota.torre}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=eliminar&idMascota=<c:out value="${mascota.idMascota}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=editar&idMascota=<c:out value="${mascota.idMascota}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>

