
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a class="btn btn-danger float-end mx-2 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet?opcion=crearApartamento" role="button">Crear nuevo registro</a>

<table class="table">
    <tr>
        <td>Usuario número</td>
        <td>Nombre</td>
        <td>Estado usuario</td>
        <td>Rol usuario</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="usuario" items="${lista}">
        <tr>

            <td><c:out value="${usuario.idUsuario}"></c:out></td>
            <td><c:out value="${usuario.nombreUsuario}"></c:out></td>
            <td><c:out value="${usuario.estadoUsuario}"></c:out></td>
            <td><c:out value="${usuario.rolUsuario}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet?opcion=eliminar&idUsuario=<c:out value="${usuario.idUsuario}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet?opcion=editar&idUsuario=<c:out value="${usuario.idUsuario}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
    </c:forEach>

</table>

<jsp:include page="/templates/parteInferior.jsp"/>
