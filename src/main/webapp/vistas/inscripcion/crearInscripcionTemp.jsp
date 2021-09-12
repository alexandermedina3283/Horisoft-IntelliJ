<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<%java.text.DateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");%>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Inscripciones</h4>
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
                <p>Formulario registro</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                        <form action="<%=request.getContextPath()%>/InscripcionServlet" method="post">
                            <input type="hidden" name="opcion" value="guardar">

                                <div class="form-group">
                                    <label for="nombreActividad">Actividad</label>
                                    <select class="form-control" name="nombreActividad" id="nombreActividad" required autofocus>
                                        <option hidden selected>Seleccione una opción</option>
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
                                           type="date" value="<%= fecha.format(new java.util.Date())%>"
                                           placeholder="Fecha inicio actividad"
                                           required/>
                                </div>

                                <div class="form-group">
                                    <label for="horaEntrada">Hora inicio</label>
                                    <input class="form-control"
                                           list="horaE" name="horaEntrada" id="horaEntrada" required
                                           type="text" pattern="^([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?$"
                                           placeholder="seleccione una opción">

                                    <datalist id= "horaE">
                                        <option value = "10:00:00"></option>
                                        <option value = "11:00:00"></option>
                                        <option value = "12:00:00"></option>
                                        <option value = "14:00:00"></option>
                                        <option value = "15:00:00"></option>
                                        <option value = "16:00:00"></option>
                                        <option value = "17:00:00"></option>
                                        <option value = "18:00:00"></option>
                                        <option value = "19:00:00"></option>
                                        <option value = "20:00:00"></option>
                                    </datalist>
                                </div>

                                <div class="form-group">
                                    <label for="fechaSalida">Fecha finalización</label>
                                    <input class="form-control"
                                           name="fechaSalida" id="fechaSalida"
                                           type="date" required value="<%= fecha.format(new java.util.Date())%>"
                                           placeholder="Fecha finalización actividad"
                                    />
                                </div>

                                <div class="form-group">
                                    <label for="horaSalida">Hora finalización</label>
                                    <input class="form-control"
                                           list="hora" name="horaSalida" id="horaSalida" required
                                           type="text" pattern="^([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?$"
                                           placeholder="seleccione una opción">

                                    <datalist id= "hora">
                                        <option value = "11:00:00"></option>
                                        <option value = "12:00:00"></option>
                                        <option value = "14:00:00"></option>
                                        <option value = "15:00:00"></option>
                                        <option value = "16:00:00"></option>
                                        <option value = "17:00:00"></option>
                                        <option value = "18:00:00"></option>
                                        <option value = "19:00:00"></option>
                                        <option value = "20:00:00"></option>
                                        <option value = "21:00:00"></option>
                                    </datalist>
                                </div>

                                <div class="form-group">
                                    <label hidden for="estadoInscripcion">Estado inscripción</label>
                                    <input class="form-control" hidden list="estado" name="estadoInscripcion" id="estadoInscripcion" value="Programado"
                                           placeholder="Seleccione estado" required>

                                    <datalist id="estado">
                                        <option value="Programado"></option>
                                        <option value="En proceso"></option>
                                        <option value="Concluido"></option>
                                        <option value="Cancelado"></option>
                                        <option value="Aprobado"></option>
                                    </datalist>
                                </div>


                                <div class="form-group">
                                    <label for="idResidente">Código residente</label>
                                    <input class="form-control"
                                           name="idResidente" id="idResidente"
                                           type="text"
                                           placeholder="Número residente"
                                           required pattern="[0-9]{1,4}"/>
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