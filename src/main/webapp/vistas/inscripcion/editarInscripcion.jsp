<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/templates/parteSuperior.jsp"/>

<div class="d-flex justify-content-center flex-column align-items-start">

    <div class="bg-light border rounded p-2 m-2 mt-3 w-50">

    <form action="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet" method="post">
        <c:set var="inscripcion" value="${inscripcion}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idInscripcion" value="${inscripcion.idInscripcion}">
        <fieldset>


            <legend>Actualizar estado de la inscripción</legend>


            <div class="form-group">
                <label for="nombreActividad">Actividad a desarrollar</label>
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
                </select><br>
            </div>


            <div class="form-group">
                <label for="fechaEntrada">Fecha de inicio</label>
                <input class="form-control"
                       name="fechaEntrada" id="fechaEntrada"
                       value="${inscripcion.fechaEntrada}" type="date"
                       placeholder="Fecha inicio actividad"
                       required/> <br/>
            </div>

            <div class="form-group">
                <label for="horaEntrada">Hora de inicio</label>
                <input class="form-control"
                       name="horaEntrada" id="horaEntrada"
                       value="${inscripcion.horaEntrada}" type="text" value="00:00:00" min="10:00:00" max="22:00:00"
                       placeholder="Hora inicio actividad"
                       required/> <br/>
            </div>

            <div class="form-group">
                <label for="fechaSalida">Fecha de finalización</label>
                <input class="form-control"
                       name="fechaSalida" id="fechaSalida"
                       value="${inscripcion.fechaSalida}" type="date"
                       placeholder="Fecha finalización actividad"
                       required/> <br/>
            </div>

            <div class="form-group">
                <label for="horaSalida">Hora de finalización</label>
                <input class="form-control"
                       name="horaSalida" id="horaSalida"
                       value="${inscripcion.horaSalida}" type="text" value="00:00:00" min="11:00:00" max="22:00:00"
                       placeholder="Hora finalización actividad"
                       required/> <br/>
            </div>

            <div class="form-group">
                <label for="estadoInscripcion">Estado de la inscripción</label>
                <input class="form-control"  list="estado" name="estadoInscripcion" id="estadoInscripcion" value="${inscripcion.estadoInscripcion}"
                       placeholder="Seleccione estado" required autofocus>

                <datalist id="estado">
                    <option value="Programado"></option>
                    <option value="En proceso"></option>
                    <option value="Concluido"></option>
                    <option value="Cancelado"></option>
                    <option value="Aprobado"></option>
                </datalist>
            </div><br>


            <div class="form-group">
                <label for="idResidente">ID residente</label>
                <input class="form-control"
                       name="idResidente" id="idResidente"
                       value="${inscripcion.idResidente}" type="text"
                       placeholder="Número residente"
                       required/>
            </div><br>
            <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Enviar formulario</button>

        </fieldset>


    </form>
    </div>

</div>

<jsp:include page="/templates/parteInferior.jsp"/>
