
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a class="btn btn-danger float-end mx-2 mb-1" href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=crearReservaSalon" role="button">Crear nuevo registro</a>

<table class="table">
    <tr>
        <td>Fecha pago reserva</td>
        <td>Número comprobante</td>
        <td>Valor deposito</td>
        <td>Número Inscripción</td>
        <td></td>
        <td></td>
    </tr>


    <c:forEach var="salonSocial" items="${lista}">
        <tr>

            <td><c:out value="${salonSocial.fechaPago}"></c:out></td>
            <td><c:out value="${salonSocial.numeroComprobante}"></c:out></td>
            <td><c:out value="${salonSocial.valorDeposito}"></c:out></td>
            <td><c:out value="${salonSocial.idInscripcion}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=eliminar&idInscripcion=<c:out value="${salonSocial.idInscripcion}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=editar&idInscripcion=<c:out value="${salonSocial.idInscripcion}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>
