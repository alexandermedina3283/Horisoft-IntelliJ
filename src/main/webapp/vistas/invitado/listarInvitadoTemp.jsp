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

                        <a type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" href="InvitadoServlet?opcion=crearInvitado" role="button" style="float: right"><i class="ti-plus" style="color: white;" > </i> Crear registro</a>

                        <div class="text-warning text-center">
                            <%
                                if(request.getAttribute("mensaje")!=null){
                            %>
                            <strong style="color: #F57C00">${mensaje}</strong>
                            <%}
                            %>
                        </div>

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

                                    <td><a href="InvitadoServlet?opcion=eliminar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
                                    <td><a href="InvitadoServlet?opcion=editar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>

                                    <%}else{ %>
                                    <td><a href="InvitadoServlet?opcion=editar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
                                    <% } %>

                                </tr>

                                <!-- Modal -->
                                <div class="modal fade" id="modal<c:out value="${invitado.idInvitado}"></c:out>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title text-danger" id="exampleModalLabel"><strong>¡Advertencia!</strong></h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <p class="fs-6">¿Esta seguro que desea eliminar los datos del invitado número <c:out value="${invitado.idInvitado}"></c:out> de forma permanente?</p>
                                                <p class="text text-center">Esta operación es irreversible</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-bs-dismiss="modal">Cancelar</button>
                                                <a type="button" class="btn btn-danger" href="InvitadoServlet?opcion=eliminar&idInvitado=<c:out value="${invitado.idInvitado}"></c:out>">Continuar</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </c:forEach>

                        </table>

                        <!--finaliza tabla-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic Table ends -->

        <jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>
