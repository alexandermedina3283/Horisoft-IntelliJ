<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Actualización parqueaderos</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="#">Mi Conjunto</a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/ParqueaderoServlet?opcion=listarParqueadero">Parqueaderos</a>
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

                        <form class="row" action="<%=request.getContextPath()%>/ParqueaderoServlet" method="post">
                            <c:set var="parqueadero" value="${parqueadero}"></c:set>
                            <input type="hidden" name="opcion" value="editar">
                            <input type="hidden" name="idMascota" value="${parqueadero.idParqueadero}">

                            <div class="col-lg-6">
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="idParqueadero">Número parqueadero</label>
                                        <input class="form-control" name="idParqueadero" id="idParqueadero" value="${parqueadero.idParqueadero}" type="text" placeholder="Digite número parqueadero" autofocus required pattern="[A-Za-z0-9]{1,6}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="numApartamento">Apartamento</label>
                                        <input class="form-control" name="numApartamento" id="numApartamento" value="${parqueadero.apartamento}" type="text" placeholder="Número apartamento" pattern="[0-9]{3,5}" required/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="claseVehiculo">Clase vehículo</label>
                                        <select class="form-control" name="claseVehiculo" id="claseVehiculo" value="${tipoVehiculo.obtenerClaseVehiculo(parqueadero.claseVehiculo).getNombreClaseVehiculo()}"
                                                type="text" placeholder="clase vehiculo" required/> <br>
                                        <option hidden value="${parqueadero.claseVehiculo}">${tipoVehiculo.obtenerClaseVehiculo(parqueadero.claseVehiculo).getNombreClaseVehiculo()}</option>
                                        <option value="1">Automovil</option>
                                        <option value="3">Camioneta</option>
                                        <option value="2">Motocicleta</option>
                                        <option value="4">Taxi</option>
                                        <option value="5">Vans</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="modeloVehiculo">Modelo</label>
                                        <input class="form-control" name="modeloVehiculo" id="modeloVehiculo" value="${parqueadero.modeloVehiculo}" type="text" placeholder="año" required pattern="[0-9]{4}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="placaVehiculo">Placa</label>
                                        <input class="form-control" name="placaVehiculo" id="placaVehiculo" value="${parqueadero.placaVehiculo}" type="text" placeholder="Placa vehículo" required pattern="[A-Z0-9]{6}"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="zonasparqueo">Ubicación</label>
                                        <input class="form-control" list="zonasparqueo" name="ubicacionParqueadero" placeholder="Sitio parqueo"
                                               required value="${parqueadero.ubicacionParqueadero}">
                                        <datalist id="zonasparqueo">
                                            <option value="Sotano">
                                            <option value="Piso 1">
                                            <option value="Piso 2">
                                            <option value="Piso 3">
                                            <option value="Azotea">
                                        </datalist>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="numTorre">Torre</label>
                                        <input class="form-control" name="numTorre" id="numTorre" value="${parqueadero.torre}" type="text" placeholder="Número torre" required pattern="[A-Z0-9]{1}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="marcaVehiculo">Marca</label>
                                        <input class="form-control" name="marcaVehiculo" id="marcaVehiculo" value="${parqueadero.marcaVehiculo}" type="text" placeholder="ej.Nissan" required pattern="[a-zA-Z]{2,20}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10">
                                        <label for="colorVehiculo">Color</label>
                                        <input class="form-control" name="colorVehiculo" id="colorVehiculo" value="${parqueadero.colorVehiculo}" type="text" placeholder="ej.Plata" required pattern="[a-zA-Z]{2,15}"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-10"><br>
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