<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 19/04/2021
  Time: 8:16 p. m.
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
        <td>ID residente</td>
        <td>Nombre</td>
        <td>Apellido</td>
        <td>Identificación</td>
        <td>Fecha nacimiento</td>
        <td>Telefono</td>
        <td>Correo electronico</td>
        <td>Estado residente</td>
        <td>Número apartamento</td>
        <td>Número torre</td>
        <td>Categoria</td>
        <td>Accion1</td>
        <td>Accion2</td>
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
            <td><c:out value="${residente.categoria}"></c:out></td>

            <td><a href="http://localhost:8080/Horisoft_war_exploded/ResidenteController?opcion=eliminar&idResidente=<c:out value="${residente.idResidente}"></c:out>">Eliminar</a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ResidenteController?opcion=editar&idResidente=<c:out value="${residente.idResidente}"></c:out>">Editar</a></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
