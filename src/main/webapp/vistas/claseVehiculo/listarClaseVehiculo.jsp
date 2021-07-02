<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/ClaseVehiculoServlet?opcion=crearClaseVehiculo" role="button">Crear nuevo registro</a>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Código clase</th>
        <th scope="col">Nombre clase</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>

    <c:forEach var="claseVehiculo" items="${lista}">
        <tr>

            <td><c:out value="${claseVehiculo.idClaseVehiculo}"></c:out></td>
            <td><c:out value="${claseVehiculo.nombreClaseVehiculo}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ClaseVehiculoServlet?opcion=eliminar&idClaseVehiculo=<c:out value="${claseVehiculo.idClaseVehiculo}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ClaseVehiculoServlet?opcion=editar&idClaseVehiculo=<c:out value="${claseVehiculo.idClaseVehiculo}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>