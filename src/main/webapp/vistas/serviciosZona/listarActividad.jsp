
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<table class="table">
    <tr>
        <td>Código servicio</td>
        <td>Nombre servicio</td>
        <td>Código zona social</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="serviciosZona" items="${lista}">
        <tr>

            <td><c:out value="${serviciosZona.idActividad}"></c:out></td>
            <td><c:out value="${serviciosZona.nombreActividad}"></c:out></td>
            <td><c:out value="${serviciosZona.idZona}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ServiciosZonaServlet?opcion=eliminar&idActividad=<c:out value="${serviciosZona.idActividad}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ServiciosZonaServlet?opcion=editar&idActividad=<c:out value="${serviciosZona.idActividad}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>