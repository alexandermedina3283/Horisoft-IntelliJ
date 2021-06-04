<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<table class="table">
    <tr>
        <td>Código zona</td>
        <td>Nombre zona</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="zonaSocial" items="${lista}">
        <tr>

            <td><c:out value="${zonaSocial.idZona}"></c:out></td>
            <td><c:out value="${zonaSocial.nombreZona}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ZonaSocialServlet?opcion=eliminar&idZona=<c:out value="${zonaSocial.idZona}"></c:out>"><i class="far fa-trash-alt"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ZonaSocialServlet?opcion=editar&idZona=<c:out value="${zonaSocial.idZona}"></c:out>"><i class="far fa-edit"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>