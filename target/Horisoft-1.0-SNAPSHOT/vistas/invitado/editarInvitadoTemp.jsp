<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Actualización Invitados zona social</h4>
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
                <p>Formulario actualización información</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                        <form action="<%=request.getContextPath()%>/InvitadoServlet" method="post">
                            <c:set var="invitado" value="${invitado}"></c:set>
                            <input type="hidden" name="opcion" value="editar">
                            <input type="hidden" name="idInvitado" value="${invitado.idInvitado}">

                                <div class="form-group">
                                    <label for="nombreInvitado">Nombre</label>
                                    <input class="form-control" name="nombreInvitado" id="nombreInvitado" value="${invitado.nombreInvitado}"type="text" placeholder="Nombre del invitado" required autofocus pattern="[A-Za-z A-Za-z]{2,40}"/>
                                </div>

                                <div class="form-group">
                                    <label for="apellidoInvitado">Apellido</label>
                                    <input class="form-control" name="apellidoInvitado" id="apellidoInvitado" value="${invitado.apellidoInvitado}" type="text" placeholder="Apellido del invitado" required pattern="[A-Za-z A-Za-z]{2,40}"/>
                                </div>

                                <div class="form-group">
                                    <label for="identificacionInvitado">Identificación</label>
                                    <input class="form-control" name="identificacionInvitado" id="identificacionInvitado" value="${invitado.identificacionInvitado}"type="text" placeholder="CC527855##" required pattern="[A-Z0-9]{2,20}"/>
                                </div>

                                <div class="form-group">
                                    <label for="idInscripcionInvitado">Número inscripción</label>
                                    <input class="form-control" name="idInscripcionInvitado" id="idInscripcionInvitado" value="${invitado.idInscripcion}"type="text" placeholder="Número Inscripción asociada" required pattern="[0-9]{1,4}"/><br/>
                                </div>

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