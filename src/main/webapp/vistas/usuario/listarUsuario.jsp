<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 19/04/2021
  Time: 8:48 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table border= "1">
    <tr>
        <td>Id</td>
        <td>Nombre</td>
        <td>Estado usuario</td>
        <td>Rol usuario</td>
        <td>Accion1</td>
        <td>Accion2</td>
    </tr>

    <c:forEach var="usuario" items="${lista}">
        <tr>

            <td><c:out value="${usuario.idUsuario}"></c:out></td>
            <td><c:out value="${usuario.nombreUsuario}"></c:out></td>
            <td><c:out value="${usuario.estadoUsuario}"></c:out></td>
            <td><c:out value="${usuario.rolUsuario}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/UsuarioController?opcion=eliminar&idUsuario=<c:out value="${usuario.idUsuario}"></c:out>">Eliminar</a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/UsuarioController?opcion=editar&idUsuario=<c:out value="${usuario.idUsuario}"></c:out>">Editar</a></td>
        </tr>
    </c:forEach>

</table>



</body>
</html>
