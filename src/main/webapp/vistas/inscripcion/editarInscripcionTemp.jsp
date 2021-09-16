<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Actualización estado inscripción</h4>
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

                        <form action="<%=request.getContextPath()%>/InscripcionServlet" method="post">
                            <c:set var="inscripcion" value="${inscripcion}"></c:set>
                            <input type="hidden" name="opcion" value="editar">
                            <input type="hidden" name="idInscripcion" value="${inscripcion.idInscripcion}">

                                <div class="form-group">
                                    <label for="nombreActividad">Actividad</label>
                                    <select class="form-control"
                                            name="nombreActividad" id="nombreActividad" value="${servicioZona.obtenerServicios(inscripcion.idActividad).getNombreActividad()}" type="text"
                                            placeholder="codigo actividad" required/>
                                    <option hidden value="${inscripcion.idInscripcion}">${servicioZona.obtenerServicios(inscripcion.idActividad).getNombreActividad()}</option>
                                    <option value="3">Ajedrez</option>
                                    <option value="4">Domino</option>
                                    <option value="5">Futbolín</option>
                                    <option value="1">Gym</option>
                                    <option value="12">Natación</option>
                                    <option value="7">Parqués</option>
                                    <option value="6">Ping Pong</option>
                                    <option value="8">Póker</option>
                                    <option value="9">Rana</option>
                                    <option value="11">Sauna</option>
                                    <option value="10">Reserva salón social</option>
                                    <option value="2">Zumba</option>
                                    </select>
                                </div>


                                <div class="form-group">
                                    <label for="fechaEntrada">Fecha inicio</label>
                                    <input class="form-control"
                                           name="fechaEntrada" id="fechaEntrada"
                                           value="${inscripcion.fechaEntrada}" type="date"
                                           placeholder="Fecha inicio actividad"
                                           required/>
                                </div>

                                <div class="form-group">
                                    <label for="horaEntrada">Hora inicio</label>
                                    <input class="form-control"
                                           name="horaEntrada" id="horaEntrada"
                                           value="${inscripcion.horaEntrada}" type="text" value="00:00:00" min="10:00:00" max="22:00:00"
                                           placeholder="Hora inicio actividad"
                                           required/>
                                </div>

                                <div class="form-group">
                                    <label for="fechaSalida">Fecha finalización</label>
                                    <input class="form-control"
                                           name="fechaSalida" id="fechaSalida"
                                           value="${inscripcion.fechaSalida}" type="date"
                                           placeholder="Fecha finalización actividad"
                                           required/>
                                </div>

                                <div class="form-group">
                                    <label for="horaSalida">Hora finalización</label>
                                    <input class="form-control"
                                           name="horaSalida" id="horaSalida"
                                           value="${inscripcion.horaSalida}" type="text" value="00:00:00" min="11:00:00" max="22:00:00"
                                           placeholder="Hora finalización actividad"
                                           required/>
                                </div>

                                <div class="form-group">
                                    <label for="estadoInscripcion">Estado inscripción</label>
                                    <input class="form-control"  list="estado" name="estadoInscripcion" id="estadoInscripcion" value="${inscripcion.estadoInscripcion}"
                                           placeholder="Seleccione estado" required autofocus>
                                    <datalist id="estado">
                                        <option value="Programado"></option>
                                        <option value="En proceso"></option>
                                        <option value="Concluido"></option>
                                        <option value="Cancelado"></option>
                                        <option value="Aprobado"></option>
                                    </datalist>
                                </div>


                                <div class="form-group">
                                    <label for="idResidente">Residente</label>
                                    <input class="form-control"
                                           name="idResidente" id="idResidente"
                                           value="${inscripcion.idResidente}" type="text"
                                           placeholder="Número residente"
                                           required/>
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