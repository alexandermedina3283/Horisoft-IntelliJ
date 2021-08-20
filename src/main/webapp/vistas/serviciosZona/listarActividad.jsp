
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/ServiciosZonaServlet?opcion=crearActividad" role="button">Crear nuevo registro</a>

<p class="fs-5 fw-normal text-start">Listado de servicios disponibles</p>

<table class="table">
    <thead>
    <tr>
        <th>Código servicio</th>
        <th>Nombre servicio</th>
        <th>Zona social</th>
        <th></th>
        <th></th>
    </tr>
    </thead>

    <c:forEach var="serviciosZona" items="${lista}">
        <tr>

            <td><c:out value="${serviciosZona.idActividad}"></c:out></td>
            <td><c:out value="${serviciosZona.nombreActividad}"></c:out></td>
            <td><c:out value="${zonasDAO.obtenerZonas(serviciosZona.idZona).getNombreZona()}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ServiciosZonaServlet?opcion=eliminar&idActividad=<c:out value="${serviciosZona.idActividad}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ServiciosZonaServlet?opcion=editar&idActividad=<c:out value="${serviciosZona.idActividad}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>