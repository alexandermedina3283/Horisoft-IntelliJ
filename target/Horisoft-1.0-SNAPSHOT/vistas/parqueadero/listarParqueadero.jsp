
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoServlet?opcion=crearParqueadero" role="button">Crear nuevo registro</a>

<table class="table">
    <thead>
    <tr>
        <th>Número parqueadero</th>
        <th>Ubicación</th>
        <th>Placa vehículo</th>
        <th>Modelo</th>
        <th>Color</th>
        <th>Marca</th>
        <th>Apartamento</th>
        <th>Torre</th>
        <th>Clase vehículo</th>
        <th></th>
        <th></th>
    </tr>
    </thead>

    <c:forEach var="parqueadero" items="${lista}">
        <tr>

            <td><c:out value="${parqueadero.idParqueadero}"></c:out></td>
            <td><c:out value="${parqueadero.ubicacionParqueadero}"></c:out></td>
            <td><c:out value="${parqueadero.placaVehiculo}"></c:out></td>
            <td><c:out value="${parqueadero.modeloVehiculo}"></c:out></td>
            <td><c:out value="${parqueadero.colorVehiculo}"></c:out></td>
            <td><c:out value="${parqueadero.marcaVehiculo}"></c:out></td>
            <td><c:out value="${parqueadero.apartamento}"></c:out></td>
            <td><c:out value="${parqueadero.torre}"></c:out></td>
            <td><c:out value="${claseVehiculoDAO.obtenerClaseVehiculo(parqueadero.claseVehiculo).getNombreClaseVehiculo()}"></c:out></td>

            <td><a href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoServlet?opcion=eliminar&idParqueadero=<c:out value="${parqueadero.idParqueadero}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoServlet?opcion=editar&idParqueadero=<c:out value="${parqueadero.idParqueadero}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>