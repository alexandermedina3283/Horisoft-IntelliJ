<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 19/04/2021
  Time: 4:27 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table border="1">
    <tr>
        <td>Numero apartamento</td>
        <td>Numero torre</td>
        <td>Estado cartera</td>
        <td>Accion1</td>
        <td>Accion2</td>
    </tr>

    <c:forEach var="apartamento" items="${lista}">
        <tr>

            <td><c:out value="${apartamento.apartamento}"></c:out></td>
            <td><c:out value="${apartamento.torre}"></c:out></td>
            <td><c:out value="${apartamento.estadoCartera}"></c:out></td>
            <td>
                <a href="http://localhost:8080/Horisoft_war_exploded/ApartamentoController?opcion=eliminar&apartamento=<c:out value="${apartamento.apartamento}"></c:out>&torre=<c:out value="${apartamento.torre}"></c:out>">Eliminar</a>
            </td>
            <td>
                <a href="http://localhost:8080/Horisoft_war_exploded/ApartamentoController?opcion=editar&apartamento=<c:out value="${apartamento.apartamento}"></c:out>&torre=<c:out value="${apartamento.torre}"></c:out>">Editar</a>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
