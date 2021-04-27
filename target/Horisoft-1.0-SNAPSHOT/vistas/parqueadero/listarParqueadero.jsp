
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/templates/parteSuperior.jsp"/>

<table class="table">
    <tr>
        <td>Número parqueadero</td>
        <td>Ubicación</td>
        <td>Placa vehículo</td>
        <td>Modelo</td>
        <td>Color</td>
        <td>Marca</td>
        <td>Apartamento</td>
        <td>Torre</td>
        <td>Clase vehículo</td>
        <td></td>
        <td></td>
    </tr>

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
            <td><c:out value="${parqueadero.claseVehiculo}"></c:out></td>

            <td><a href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoController?opcion=eliminar&idParqueadero=<c:out value="${parqueadero.idParqueadero}"></c:out>">Eliminar</a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoController?opcion=editar&idParqueadero=<c:out value="${parqueadero.idParqueadero}"></c:out>">Editar</a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>