<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Actualización de Usuarios</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/UsuarioServlet?opcion=listarUsuario">Usuarios</a>
                </li>
            </ol>
        </div>
    </div>
</div>
<!-- Header end -->


<!-- Row start -->
<div class="row">
    <div class="col-sm-12">
        <!-- Basic form starts -->
        <div class="card">
            <div class="card-header">
                <h5 class="card-header-text">Datos generales</h5>
                <p>Formulario actualización usuario</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                        <form action="<%=request.getContextPath()%>/UsuarioServlet" method="post">

                            <c:set var="usuario" value="${usuario}"></c:set>
                            <input type="hidden" name="opcion" value="editar">
                            <input type="hidden" name="idUsuario" value="${usuario.idUsuario}">

                                <div class="form-group">
                                    <label for="nombreUsuario">Nombre usuario :</label>
                                    <input class="form-control" type="text" name="nombreUsuario" id="nombreUsuario" value="${usuario.nombreUsuario}"
                                           placeholder="Digite nombre usuario" autofocus required pattern=[a-zA-Z0-9]{2,40}>
                                </div>

                                <div class="form-group">
                                    <label for="contraUsuario">Contraseña :</label>
                                    <input class="form-control" type="password" name="contraUsuario" id="contraUsuario" value="${usuario.contrasena}"
                                           placeholder="Ingrese su contraseña" required pattern="*{8,15}">
                                </div>

                                <div class="form-group">
                                    <label for="estadouser">Estado usuario:</label>
                                    <input class="form-control" list="estado_usuario" name="estadoUsuario" id="estadouser" value="${usuario.estadoUsuario}"
                                           placeholder="Seleccione una opción" required>
                                    <datalist id="estado_usuario">
                                        <option value="Activo"></option>
                                        <option value="Inactivo"></option>
                                    </datalist>
                                </div>

                                <div class="form-group">
                                    <label for="rol">Tipo usuario:</label>
                                    <input class="form-control" list="rol_usuario" name="rolUsuario" id="rol" value="${usuario.rolUsuario}"
                                           placeholder="Seleccione una opción" required>
                                    <datalist id="rol_usuario">
                                        <option value="Administrador Conjunto"></option>
                                        <option value="Gestionador Zona"></option>
                                        <!--<option value="Residente"></option>-->
                                    </datalist>
                                </div><br>

                            <button type="submit" type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" style="float: right"><i class="ti-save" style="color: white;" > </i> Guardar
                            </button>

                        </form>

                        <!--finaliza formulario-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic form ends -->


<jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>