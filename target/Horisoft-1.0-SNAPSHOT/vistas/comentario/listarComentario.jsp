
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<table class="table">
    <tr>
        <td>Número comentario</td>
        <td>Fecha</td>
        <td>Descripción</td>
        <td>Autor</td>
        <td>ID inscripción</td>
        <td></td>
        <td></td>
    </tr>

    <c:forEach var="comentario" items="${lista}">
        <tr>

            <td><c:out value="${comentario.idComentario}"></c:out></td>
            <td><c:out value="${comentario.fechaComentario}"></c:out></td>
            <td><c:out value="${comentario.descripcionComentario}"></c:out></td>
            <td><c:out value="${comentario.autorComentario}"></c:out></td>
            <td><c:out value="${comentario.idInscripcion}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ComentarioController?opcion=eliminar&idComentario=<c:out value="${comentario.idComentario}"></c:out>">Eliminar</a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ComentarioController?opcion=editar&idComentario=<c:out value="${comentario.idComentario}"></c:out>">Editar</a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>

