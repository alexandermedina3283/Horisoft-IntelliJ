
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<table border= "1">
    <tr>
        <td>Numero mascota</td>
        <td>Nombre</td>
        <td>Clase</td>
        <td>Apartamento</td>
        <td>Torre</td>
        <td>Accion1</td>
        <td>Accion2</td>
    </tr>

    <c:forEach var="mascota" items="${lista}">
        <tr>

            <td><c:out value="${mascota.idMascota}"></c:out></td>
            <td><c:out value="${mascota.nombre}"></c:out></td>
            <td><c:out value="${mascota.clase}"></c:out></td>
            <td><c:out value="${mascota.apartamento}"></c:out></td>
            <td><c:out value="${mascota.torre}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/MascotaController?opcion=eliminar&idMascota=<c:out value="${mascota.idMascota}"></c:out>">Eliminar</a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/MascotaController?opcion=editar&idMascota=<c:out value="${mascota.idMascota}"></c:out>">Editar</a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>

