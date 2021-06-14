<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a class="btn btn-danger float-end mx-2 mb-1" href="http://localhost:8080/Horisoft_war_exploded/ClaseVehiculoServlet?opcion=crearClaseVehiculo" role="button">Crear nuevo registro</a>

<table class="table">
    <tr>
        <td>Código clase</td>
        <td>Nombre clase</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="claseVehiculo" items="${lista}">
        <tr>

            <td><c:out value="${claseVehiculo.idClaseVehiculo}"></c:out></td>
            <td><c:out value="${claseVehiculo.nombreClaseVehiculo}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ClaseVehiculoServlet?opcion=eliminar&idClaseVehiculo=<c:out value="${claseVehiculo.idClaseVehiculo}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ClaseVehiculoServlet?opcion=editar&idClaseVehiculo=<c:out value="${claseVehiculo.idClaseVehiculo}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>