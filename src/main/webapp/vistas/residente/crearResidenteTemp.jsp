<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

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


<!-- Row start -->
<div class="row">
    <div class="col-sm-12">
        <!-- Basic form starts -->
        <div class="card">
            <div class="card-header">
                <h5 class="card-header-text">Datos generales</h5>
                <p>Formulario de registro</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                        <form class="row" action="<%=request.getContextPath()%>/ResidenteServlet" method="post">
                            <input type="hidden" name="opcion" value="guardar">

                            <div class="col-lg-6">
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="nombreResidente">Nombre</label>
                                        <input class="form-control" name="nombreResidente" id="nombreResidente" type="text" placeholder="ej. Juan " autofocus required pattern="[A-ZÑa-zñ A-ZÑa-zñ]{2,40}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="identificacionResidente">Identificación</label>
                                        <input class="form-control" name="identificacionResidente" id="identificacionResidente" type="text" placeholder="ej. CC########" required pattern="[A-Z0-9]{2,20}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="telefonoResidente">Telefono</label>
                                        <input class="form-control" name="telefonoResidente" id="telefonoResidente" type="text" placeholder="ej. 32054212##" pattern="[0-9]{7,20}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="estadoResidente">Estado residente</label>
                                        <input class="form-control" list="estado" name="estadoResidente" id="estadoResidente"
                                               placeholder="Seleccione estado" required>

                                        <datalist id="estado">
                                            <option value="Activo"></option>
                                            <option value="Inactivo"></option>
                                        </datalist>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="numApartamento">Apartamento</label>
                                        <input class="form-control" name="numApartamento" id="numApartamento" type="text" placeholder="Ingrese número del apartamento" pattern="[0-9]{3,5}" required/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="apellidoResidente">Apellido</label>
                                        <input class="form-control" name="apellidoResidente" id="apellidoResidente" type="text" placeholder="ej. Rodriguez" required pattern="[A-ZÑa-zñ A-ZÑa-zñ]{2,40}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="fechaNacimiento">Fecha nacimiento</label>
                                        <input class="form-control" name="fechaNacimiento" id="fechaNacimiento" type="date" placeholder="fecha de nacimiento" required/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="emailResidente">Correo electronico</label>
                                        <input class="form-control" name="emailResidente" id="emailResidente" type="email" placeholder="ej.nombre&#64micorreo.com"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="categoriaResidente">Categoria residente</label>
                                        <select class="form-control" name="categoriaResidente" id="categoriaResidente" required>
                                            <option hidden selected>Seleccione una opción</option>
                                            <option value="1">Propietario</option>
                                            <option value="2">Arrendatario</option>
                                            <option value="3">Nucleo propietario</option>
                                            <option value="4">Nucleo arrendatario</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="numTorre">Torre</label>
                                        <input class="form-control" name="numTorre" id="numTorre" type="text" placeholder="Ingrese número de torre" required pattern="[A-Z0-9]{1}"/>
                                    </div>
                                </div><br>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <button type="submit" type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" style="float: right">Enviar formulario
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <!--finaliza formulario-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic form ends -->


<jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>