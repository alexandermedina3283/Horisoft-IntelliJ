
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet?opcion=crearComentario" role="button">Crear nuevo registro</a>

<table class="table">
    <thead>
    <tr>
        <th>Número comentario</th>
        <th>Fecha</th>
        <th>Descripción</th>
        <th>Autor</th>
        <th>Número inscripción</th>
        <th></th>
        <th></th>
    </tr>
    </thead>

    <c:forEach var="comentario" items="${lista}">
        <tr>

            <td><c:out value="${comentario.idComentario}"></c:out></td>
            <td><c:out value="${comentario.fechaComentario}"></c:out></td>
            <td><c:out value="${comentario.descripcionComentario}"></c:out></td>
            <td><c:out value="${comentario.autorComentario}"></c:out></td>
            <td><c:out value="${comentario.idInscripcion}"></c:out></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet?opcion=eliminar&idComentario=<c:out value="${comentario.idComentario}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet?opcion=editar&idComentario=<c:out value="${comentario.idComentario}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>

