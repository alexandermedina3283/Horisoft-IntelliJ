
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="/templates/parteSuperior.jsp"/>
<table class="table">
    <tr>
        <td>Número Apartamento</td>
        <td>Número Torre</td>
        <td>Estado Cartera</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="apartamento" items="${lista}">
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
    </c:forEach>

</table>

<jsp:include page="/templates/parteInferior.jsp"/>
