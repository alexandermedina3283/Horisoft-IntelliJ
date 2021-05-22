<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>
<section>

    <form action="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet" method="post">
        <c:set var="inscripcion" value="${inscripcion}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idInscripcion" value="${inscripcion.idInscripcion}">
        <fieldset>


            <legend>Actualizar estado de la inscripción</legend>


            <div class="form-group">
                <label for="nombreActividad">Actividad a desarrollar</label>
                <input class="form-control"
                       name="nombreActividad" id="nombreActividad" value="${inscripcion.idActividad}" type="text"
                       placeholder="codigo actividad" required/> <br/>
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
                       required/> <br/>
            </div>

        </fieldset>
        <br/>
        <button type="submit" class="btn btn-secondary">Guardar</button>

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
