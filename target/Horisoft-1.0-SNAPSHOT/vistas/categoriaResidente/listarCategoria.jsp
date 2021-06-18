<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/CategoriaResidenteServlet?opcion=crearCategoriaResidente" role="button">Crear nuevo registro</a>

<table class="table">
    <tr>
        <td>Número categoria</td>
        <td>Nombre categoria</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="categoriaResidente" items="${lista}">
        <tr>

            <td><c:out value="${categoriaResidente.idCategoria}"></c:out></td>
            <td><c:out value="${categoriaResidente.nombreCategoria}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/CategoriaResidenteServlet?opcion=eliminar&idCategoria=<c:out value="${categoriaResidente.idCategoria}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/CategoriaResidenteServlet?opcion=editar&idCategoria=<c:out value="${categoriaResidente.idCategoria}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>