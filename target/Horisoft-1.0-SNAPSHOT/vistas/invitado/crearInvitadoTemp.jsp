<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Invitados</h4>
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


<!-- Row start -->
<div class="row">
    <div class="col-sm-12">
        <!-- Basic form starts -->
        <div class="card">
            <div class="card-header">
                <h5 class="card-header-text">Datos generales</h5>
                <p>Formulario registro</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                        <form action="<%=request.getContextPath()%>/InvitadoServlet" method="post">
                            <input type="hidden" name="opcion" value="guardar">

                                <div class="form-group">
                                    <label for="nombreInvitado">Nombre</label>
                                    <input class="form-control" name="nombreInvitado" id="nombreInvitado" type="text" placeholder="Ej. Juan" required autofocus pattern="[A-ZÑa-zñ A-ZÑa-zñ]{2,40}"/>
                                </div>

                                <div class="form-group">
                                    <label for="apellidoInvitado">Apellido</label>
                                    <input class="form-control" name="apellidoInvitado" id="apellidoInvitado" type="text" placeholder="Ej. Gutierrez" required pattern="[A-ZÑa-zñ A-ZÑa-zñ]{2,40}"/>
                                </div>

                                <div class="form-group">
                                    <label for="identificacionInvitado">Identificación</label>
                                    <input class="form-control" name="identificacionInvitado" id="identificacionInvitado" type="text" placeholder="Ej. CC789654##" required pattern="[A-Z0-9]{2,20}"/>
                                </div>

                                <div class="form-group">
                                    <label for="idInscripcionInvitado">Número inscripción</label>
                                    <input class="form-control" name="idInscripcionInvitado" id="idInscripcionInvitado" type="text" placeholder="Ingrese número de inscripcion" required pattern="[0-9]{1,4}"/>
                                </div><br>


                            <button type="submit" type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" style="float: right">Enviar formulario
                            </button>


                        </form>

                        <!--finaliza formulario-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic form ends -->


<jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>