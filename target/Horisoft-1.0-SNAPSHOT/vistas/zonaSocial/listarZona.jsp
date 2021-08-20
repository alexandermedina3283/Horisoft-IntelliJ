<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/ZonaSocialServlet?opcion=crearZonaSocial" role="button">Crear nuevo registro</a>

<p class="fs-5 fw-normal text-start">Listado de zonas disponibles</p>

<table class="table">
    <thead>
    <tr>
        <th>Código zona</th>
        <th>Nombre zona</th>
        <th></th>
        <th></th>
    </tr>
    </thead>

    <c:forEach var="zonaSocial" items="${lista}">
        <tr>

            <td><c:out value="${zonaSocial.idZona}"></c:out></td>
            <td><c:out value="${zonaSocial.nombreZona}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ZonaSocialServlet?opcion=eliminar&idZona=<c:out value="${zonaSocial.idZona}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ZonaSocialServlet?opcion=editar&idZona=<c:out value="${zonaSocial.idZona}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>