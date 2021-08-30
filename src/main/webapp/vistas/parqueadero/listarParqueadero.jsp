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
<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="ParqueaderoServlet?opcion=crearParqueadero" role="button">Crear nuevo registro</a>

<%}else{ %>

<% } %>

<p class="fs-5 fw-normal text-start">Listado de parqueaderos</p><br>

<div class="text-warning bg-dark text-center">
    <%
        if(request.getAttribute("mensaje")!=null){
    %>
    ${mensaje}
    <%}
    %>
</div>

<table class="table">
    <thead>
    <tr>
        <th>Número parqueadero</th>
        <th>Ubicación</th>
        <th>Placa vehículo</th>
        <th>Modelo</th>
        <th>Color</th>
        <th>Marca</th>
        <th>Apartamento</th>
        <th>Torre</th>
        <th>Clase vehículo</th>
        <th></th>
        <th></th>
    </tr>
    </thead>

    <c:forEach var="parqueadero" items="${lista}">
        <tr>

            <td><c:out value="${parqueadero.idParqueadero}"></c:out></td>
            <td><c:out value="${parqueadero.ubicacionParqueadero}"></c:out></td>
            <td><c:out value="${parqueadero.placaVehiculo}"></c:out></td>
            <td><c:out value="${parqueadero.modeloVehiculo}"></c:out></td>
            <td><c:out value="${parqueadero.colorVehiculo}"></c:out></td>
            <td><c:out value="${parqueadero.marcaVehiculo}"></c:out></td>
            <td><c:out value="${parqueadero.apartamento}"></c:out></td>
            <td><c:out value="${parqueadero.torre}"></c:out></td>
            <td><c:out value="${claseVehiculoDAO.obtenerClaseVehiculo(parqueadero.claseVehiculo).getNombreClaseVehiculo()}"></c:out></td>

            <%
                if(rol.equals("Administrador Conjunto")){
            %>
            <td><a type="button" data-bs-toggle="modal" data-bs-target="#modal<c:out value="${parqueadero.idParqueadero}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="ParqueaderoServlet?opcion=editar&idParqueadero=<c:out value="${parqueadero.idParqueadero}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
            <%}else{ %>

            <% } %>
        </tr>

        <!-- Modal -->
        <div class="modal fade" id="modal<c:out value="${parqueadero.idParqueadero}"></c:out>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-danger" id="exampleModalLabel"><strong>¡Advertencia!</strong></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="fs-6">¿Esta seguro que desea eliminar los datos del parqueadero número <c:out value="${parqueadero.idParqueadero}"></c:out> de forma permanente?</p>
                        <p class="text text-center">Esta operación es irreversible</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-bs-dismiss="modal">Cancelar</button>
                        <a type="button" class="btn btn-danger" href="ParqueaderoServlet?opcion=eliminar&idParqueadero=<c:out value="${parqueadero.idParqueadero}"></c:out>">Continuar</a>
                    </div>
                </div>
            </div>
        </div>

    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>