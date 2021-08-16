
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet?opcion=crearUsuario" role="button">Crear nuevo registro</a>

<table class="table">
    <thead>
    <tr>
        <th>Usuario número</th>
        <th>Nombre</th>
        <th>Estado usuario</th>
        <th>Rol usuario</th>
        <th></th>
        <th></th>
    </tr>
    </thead>

    <c:forEach var="usuario" items="${lista}">
        <tr>

            <td><c:out value="${usuario.idUsuario}"></c:out></td>
            <td><c:out value="${usuario.nombreUsuario}"></c:out></td>
            <td><c:out value="${usuario.estadoUsuario}"></c:out></td>
            <td><c:out value="${usuario.rolUsuario}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet?opcion=eliminar&idUsuario=<c:out value="${usuario.idUsuario}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet?opcion=editar&idUsuario=<c:out value="${usuario.idUsuario}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
        </tr>
    </c:forEach>

</table>

<jsp:include page="/templates/parteInferior.jsp"/>
