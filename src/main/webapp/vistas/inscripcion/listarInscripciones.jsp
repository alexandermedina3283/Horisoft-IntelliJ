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

<a type="button" class="btn btn-outline-secondary float-end mx-0 mb-1 mt-3 p-2" href="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet?opcion=crearInscripcion" role="button">Crear nuevo registro</a>

<p class="fs-5 fw-normal text-start">Listado de actividades programadas</p><br>

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
        <th scope="col">Número inscripción</th>
        <th scope="col">Fecha inscripción</th>
        <th scope="col">Fecha inicio</th>
        <th scope="col">Hora inicio</th>
        <th scope="col">Fecha finalización</th>
        <th scope="col">Hora finalización</th>
        <th scope="col">Estado inscripción</th>
        <th scope="col">Código residente</th>
        <th scope="col">Actividad</th>
        <th></th>
        <th></th>
    </tr>
    </thead>

    <c:forEach var="inscripcion" items="${lista}">
        <tr>

            <td><c:out value="${inscripcion.idInscripcion}"></c:out></td>
            <td><c:out value="${inscripcion.fechaInscripcion}"></c:out></td>
            <td><c:out value="${inscripcion.fechaEntrada}"></c:out></td>
            <td><c:out value="${inscripcion.horaEntrada}"></c:out></td>
            <td><c:out value="${inscripcion.fechaSalida}"></c:out></td>
            <td><c:out value="${inscripcion.horaSalida}"></c:out></td>
            <td><c:out value="${inscripcion.estadoInscripcion}"></c:out></td>
            <td><c:out value="${inscripcion.idResidente}"></c:out></td>
            <td><c:out value="${ActividadDAO.obtenerServicios(inscripcion.idActividad).getNombreActividad()}"></c:out></td>

            <%
                if(rol.equals("Administrador Conjunto")){
            %>

            <td><a type="button" data-bs-toggle="modal" data-bs-target="#modal<c:out value="${inscripcion.idInscripcion}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
            <td><a href="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet?opcion=editar&idInscripcion=<c:out value="${inscripcion.idInscripcion}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>

            <%}else{ %>

            <td><a href="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet?opcion=editar&idInscripcion=<c:out value="${inscripcion.idInscripcion}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>

            <% } %>

        </tr>

        <!-- Modal -->
        <div class="modal fade" id="modal<c:out value="${inscripcion.idInscripcion}"></c:out>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-danger" id="exampleModalLabel"><strong>¡Advertencia!</strong></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="fs-6">¿Esta seguro que desea eliminar los datos de la inscripción número <c:out value="${inscripcion.idInscripcion}"></c:out> de forma permanente?</p>
                        <p class="text text-center">Esta operación es irreversible</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-bs-dismiss="modal">Cancelar</button>
                        <a type="button" class="btn btn-danger" <a href="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet?opcion=eliminar&idInscripcion=<c:out value="${inscripcion.idInscripcion}"></c:out>">Continuar</a>
                    </div>
                </div>
            </div>
        </div>

    </c:forEach>

</table>
<jsp:include page="/templates/parteInferior.jsp"/>

