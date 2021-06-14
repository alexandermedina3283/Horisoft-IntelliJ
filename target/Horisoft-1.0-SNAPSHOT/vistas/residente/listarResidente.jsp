
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/templates/parteSuperior.jsp"/>

<a class="btn btn-danger float-end mx-2 mb-1" href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=crearResidente" role="button">Crear nuevo registro</a>

<table class="table">
    <tr>
        <td>Código residente</td>
        <td>Nombre</td>
        <td>Apellido</td>
        <td>Identificación</td>
        <td>Fecha nacimiento</td>
        <td>Teléfono</td>
        <td>Correo electrónico</td>
        <td>Estado</td>
        <td>N° Apartamento</td>
        <td>N° Torre</td>
        <td>Categoría</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="residente" items="${lista}">
        <tr>

            <td><c:out value="${residente.idResidente}"></c:out></td>
            <td><c:out value="${residente.nombre}"></c:out></td>
            <td><c:out value="${residente.apellido}"></c:out></td>
            <td><c:out value="${residente.identificacion}"></c:out></td>
            <td><c:out value="${residente.fechaNacimiento}"></c:out></td>
            <td><c:out value="${residente.telefono}"></c:out></td>
            <td><c:out value="${residente.email}"></c:out></td>
            <td><c:out value="${residente.estado}"></c:out></td>
            <td><c:out value="${residente.apartamento}"></c:out></td>
            <td><c:out value="${residente.torre}"></c:out></td>
            <td><c:out value="${categoriaDAO.obtenerCategorias(residente.categoria).getNombreCategoria()}"></c:out></td>

            <td><a href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=eliminar&idResidente=<c:out value="${residente.idResidente}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=editar&idResidente=<c:out value="${residente.idResidente}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>