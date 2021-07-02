
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=crearReservaSalon" role="button">Crear nuevo registro</a>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Fecha pago reserva</th>
        <th scope="col">Número comprobante</th>
        <th scope="col">Valor deposito</th>
        <th scope="col">Número Inscripción</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>


    <c:forEach var="salonSocial" items="${lista}">
        <tr>

            <td><c:out value="${salonSocial.fechaPago}"></c:out></td>
            <td><c:out value="${salonSocial.numeroComprobante}"></c:out></td>
            <td><c:out value="${salonSocial.valorDeposito}"></c:out></td>
            <td><c:out value="${salonSocial.idInscripcion}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=eliminar&idInscripcion=<c:out value="${salonSocial.idInscripcion}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=editar&idInscripcion=<c:out value="${salonSocial.idInscripcion}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>
