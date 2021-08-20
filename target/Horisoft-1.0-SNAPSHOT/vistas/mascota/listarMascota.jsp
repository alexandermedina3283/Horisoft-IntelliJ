<%@ page import="co.com.horisoft.modelo.beans.Usuario" %>
<!--variables de sesión-->
<%
    HttpSession miSesion = (HttpSession) request.getSession();
    String nombre="";
    String rol="";


    if  (miSesion.getAttribute("datosUsuario") == null){
        request.getRequestDispatcher("/Login.jsp").forward(request,response);

    }else {
        Usuario usuario = (Usuario) miSesion.getAttribute("datosUsuario");
        nombre = usuario.getNombreUsuario();
        rol=usuario.getRolUsuario();
    }
%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<%
    if(rol.equals("Administrador Conjunto")){
%>
<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=crearMascota" role="button">Crear nuevo registro</a>

<%}else{ %>

<% } %>

<p class="fs-5 fw-normal text-start">Listado de mascotas</p>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Número mascota</th>
        <th scope="col">Nombre</th>
        <th scope="col">Clase</th>
        <th scope="col">Apartamento</th>
        <th scope="col">Torre</th>
        <th></th>
        <th></th>
    </tr>
    </thead>

    <c:forEach var="mascota" items="${lista}">
        <tr>

            <td><c:out value="${mascota.idMascota}"></c:out></td>
            <td><c:out value="${mascota.nombre}"></c:out></td>
            <td><c:out value="${mascota.clase}"></c:out></td>
            <td><c:out value="${mascota.apartamento}"></c:out></td>
            <td><c:out value="${mascota.torre}"></c:out></td>

            <%
                if(rol.equals("Administrador Conjunto")){
            %>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=eliminar&idMascota=<c:out value="${mascota.idMascota}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=editar&idMascota=<c:out value="${mascota.idMascota}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>

            <%}else{ %>

            <% } %>


        </tr>
    </c:forEach>

</table>

<jsp:include page="/templates/parteInferior.jsp"/>

