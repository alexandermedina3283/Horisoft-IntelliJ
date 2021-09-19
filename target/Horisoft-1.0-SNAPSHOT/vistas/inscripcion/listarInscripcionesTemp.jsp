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
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Inscripciones para zona social</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="#">Zonas sociales</a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/InscripcionServlet?opcion=listarInscripcion">Inscripciones</a>
                </li>
            </ol>
        </div>
    </div>
</div>
<!-- Header end -->

<!-- Tables start -->
<!-- Row start -->
<div class="row">
    <div class="col-sm-12">
        <!-- Basic Table starts -->
        <div class="card">
            <div class="card-header">
                <h5 class="card-header-text">Listado general</h5>
                <p>Actividades recreodeportivas programadas</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia tabla-->

                        <!--Alerta mensaje resultado operación-->
                        <%
                            if(request.getAttribute("mensaje")!=null){
                        %>
                        <div class="alert alert-dark" role="alert" style="color: #F57C00; background: #E5E5E5; text-align: center">
                            <strong>${mensaje}</strong>
                        </div>
                        <%}
                        %>

                        <a type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" href="InscripcionServlet?opcion=crearInscripcion" role="button" style="float: right"><i class="ti-plus" style="color: white;" > </i> Crear registro</a>


                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Inscripción</th>
                                <th scope="col">Fecha inscripción</th>
                                <th scope="col">Fecha inicio</th>
                                <th scope="col">Hora inicio</th>
                                <th scope="col">Fecha finalización</th>
                                <th scope="col">Hora finalización</th>
                                <th scope="col">Estado</th>
                                <th scope="col">Cód residente</th>
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

                                    <td><a type="button" data-toggle="modal" data-target="#myModal<c:out value="${inscripcion.idInscripcion}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
                                    <td><a href="InscripcionServlet?opcion=editar&idInscripcion=<c:out value="${inscripcion.idInscripcion}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>

                                    <%}else{ %>

                                    <td><a href="InscripcionServlet?opcion=editar&idInscripcion=<c:out value="${inscripcion.idInscripcion}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>

                                    <% } %>

                                </tr>

                                <!-- start modal content -->
                                <div id="myModal<c:out value="${inscripcion.idInscripcion}"></c:out>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h5 class="modal-title" id="myModalLabel" style="color: #fb5959">¡Advertencia!</h5>
                                            </div>
                                            <div class="modal-body">
                                                <p>¿Esta seguro que desea eliminar los datos de la inscripción número <c:out value="${inscripcion.idInscripcion}"></c:out> de forma permanente?</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Cancelar</button>
                                                <a type="button" class="btn btn-warning waves-effect waves-light" href="InscripcionServlet?opcion=eliminar&idInscripcion=<c:out value="${inscripcion.idInscripcion}"></c:out>">Continuar</a>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div><!-- /.modal -->
                                <!-- end modal content -->

                            </c:forEach>

                        </table>

                        <!--finaliza tabla-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic Table ends -->

<jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>