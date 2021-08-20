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
<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=crearResidente" role="button">Crear nuevo registro</a>

<%}else{ %>

<% } %>

<p class="fs-5 fw-normal text-start">Listado de residentes</p>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Código</th>
        <th scope="col">Nombre</th>
        <th scope="col">Apellido</th>
        <th scope="col">Identificación</th>
        <th scope="col">Fecha nacimiento</th>
        <th scope="col">Teléfono</th>
        <th scope="col">Correo electrónico</th>
        <th scope="col">Estado</th>
        <th scope="col">N° Apartamento</th>
        <th scope="col">N° Torre</th>
        <th scope="col">Categoría</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>

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
            <td><c:out value="${categoriaDAO.obtenerCategorias(residente.categoria).getNombreCategoria()}"></c:out></td>

            <%
                if(rol.equals("Administrador Conjunto")){
            %>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=eliminar&idResidente=<c:out value="${residente.idResidente}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=editar&idResidente=<c:out value="${residente.idResidente}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
            <%}else{ %>

            <% } %>
        </tr>
    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>