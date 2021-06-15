<jsp:include page="/templates/parteSuperior.jsp"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/datatableprueba/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/datatableprueba/css/jquery.dataTables.min.css">

    <title>Document</title>
</head>
<body>-->


<a class="btn btn-danger float-end mx-2 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet?opcion=crearApartamento" role="button">Crear nuevo registro</a>

<table id="example" class="display" style="width: 95%">
    <thead>
    <tr>
        <th>Número apartamento</th>
        <th>Número torre</th>
        <th>Estado cartera</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <c:forEach var="apartamento" items="${lista}">
    <tbody>
    <tr>
        <td><c:out value="${apartamento.apartamento}"></c:out></td>
        <td><c:out value="${apartamento.torre}"></c:out></td>
        <td><c:out value="${apartamento.estadoCartera}"></c:out></td>
        <td>
            <a href="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet?opcion=eliminar&apartamento=<c:out value="${apartamento.apartamento}"></c:out>&torre=<c:out value="${apartamento.torre}"></c:out>"><i class="far fa-trash-alt"></i></a>
        </td>
        <td>
            <a href="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet?opcion=editar&apartamento=<c:out value="${apartamento.apartamento}"></c:out>&torre=<c:out value="${apartamento.torre}"></c:out>"><i class="far fa-edit"></i></a>
        </td>
    </tr>
    </tbody>
    </c:forEach>
    <tfoot>
    <tr>
        <th>Número apartamento</th>
        <th>Número torre</th>
        <th>Estado cartera</th>
        <th></th>
        <th></th>
    </tr>
    </tfoot>

</table>


<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/script.js"></script>

<!--</body>
</html>-->

<jsp:include page="/templates/parteInferior.jsp"/>