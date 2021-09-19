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
            <h4>Invitados zona social</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="#">Zonas sociales</a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/InvitadoServlet?opcion=listarInvitado">Invitados</a>
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
                <p>Invitados registrados</p>
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

                        <a type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" href="InvitadoServlet?opcion=crearInvitado" role="button" style="float: right"><i class="ti-plus" style="color: white;" > </i> Crear registro</a>

                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Invitado número</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellidos</th>
                                <th scope="col">Identificación</th>
                                <th scope="col">Número Inscripción</th>
                                <th scope="col"></th>
                                <th scope="col"></th>
                            </tr>
                            </thead>

                            <c:forEach var="invitado" items="${lista}">
                                <tr>

                                    <td><c:out value="${invitado.idInvitado}"></c:out></td>
                                    <td><c:out value="${invitado.nombreInvitado}"></c:out></td>
                                    <td><c:out value="${invitado.apellidoInvitado}"></c:out></td>
                                    <td><c:out value="${invitado.identificacionInvitado}"></c:out></td>
                                    <td><c:out value="${invitado.idInscripcion}"></c:out></td>

                                    <%
                                        if(rol.equals("Administrador Conjunto")){
                                    %>

                                    <td><a type="button" data-toggle="modal" data-target="#myModal<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
                                    <td><a href="InvitadoServlet?opcion=editar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>

                                    <%}else{ %>
                                    <td><a href="InvitadoServlet?opcion=editar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
                                    <% } %>

                                </tr>

                                <!-- start modal content -->
                                <div id="myModal<c:out value="${invitado.idInvitado}"></c:out>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h5 class="modal-title" id="myModalLabel" style="color: #fb5959">¡Advertencia!</h5>
                                            </div>
                                            <div class="modal-body">
                                                <p>¿Esta seguro que desea eliminar los datos del invitado número <c:out value="${invitado.idInvitado}"></c:out> de forma permanente?</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Cancelar</button>
                                                <a type="button" class="btn btn-warning waves-effect waves-light" href="InvitadoServlet?opcion=eliminar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>">Continuar</a>
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
