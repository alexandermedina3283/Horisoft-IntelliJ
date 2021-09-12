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
            <h4>Residentes</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="#">Mi Conjunto</a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/ResidenteServlet?opcion=listarResidente">Residentes</a>
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
                <p>Residentes conjunto residencial</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia tabla-->

                        <%
                            if(rol.equals("Administrador Conjunto")){
                        %>

                        <a type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" href="ResidenteServlet?opcion=crearResidente" role="button" style="float: right"><i class="ti-plus" style="color: white;" > </i> Crear registro</a>

                        <%}else{ %>

                        <% } %>

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
                                <th scope="col">Código</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Identificación</th>
                                <th scope="col">Fecha nacimiento</th>
                                <th scope="col">Teléfono</th>
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
                                    <td><c:out value="${residente.estado}"></c:out></td>
                                    <td><c:out value="${residente.apartamento}"></c:out></td>
                                    <td><c:out value="${residente.torre}"></c:out></td>
                                    <td><c:out value="${categoriaDAO.obtenerCategorias(residente.categoria).getNombreCategoria()}"></c:out></td>

                                    <%
                                        if(rol.equals("Administrador Conjunto")){
                                    %>
                                    <td><a type="button" data-bs-toggle="modal" data-bs-target="#modal<c:out value="${residente.idResidente}"></c:out>"><i class="far fa-trash-alt" style="color: black;"></i></a></td>
                                    <td><a href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=editar&idResidente=<c:out value="${residente.idResidente}"></c:out>"><i class="far fa-edit" style="color: black;"></i></a></td>
                                    <%}else{ %>

                                    <% } %>
                                </tr>

                                <!-- Modal -->
                                <div class="modal fade" id="modal<c:out value="${residente.idResidente}"></c:out>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title text-danger" id="exampleModalLabel"><strong>¡Advertencia!</strong></h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <p class="fs-6">¿Esta seguro que desea eliminar los datos del residente número <c:out value="${residente.idResidente}"></c:out> de forma permanente?</p>
                                                <p class="text text-center">Esta operación es irreversible</p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" data-bs-dismiss="modal">Cancelar</button>
                                                <a type="button" class="btn btn-danger" href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=eliminar&idResidente=<c:out value="${residente.idResidente}"></c:out>">Continuar</a>
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
