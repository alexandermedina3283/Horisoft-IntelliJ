<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>
<section>

    <form action="http://localhost:8080/Horisoft_war_exploded/InscripcionController" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>


            <legend>Datos de la inscripción</legend>

            <div class="form-group">
                <label for="fechaEntrada">Fecha de inicio</label>
                <input class="form-control"
                       name="fechaEntrada" id="fechaEntrada"
                       type="date"
                       placeholder="Fecha inicio actividad"
                       required/> <br/>
            </div>

            <div class="form-group">
                <label for="horaEntrada">Hora de inicio</label>
                <input class="form-control"
                       name="horaEntrada" id="horaEntrada"
                       type="time"
                       placeholder="Hora inicio actividad"
                       required/> <br/>
            </div>

            <div class="form-group">
            <label for="fechaSalida">Fecha de finalización</label>
            <input class="form-control"
                   name="fechaSalida" id="fechaSalida"
                   type="date"
                   placeholder="Fecha finalización actividad"
                   required/> <br/>
            </div>

            <div class="form-group">
                <label for="horaSalida">Hora de finalización</label>
                <input class="form-control"
                       name="horaSalida" id="horaSalida"
                       type="time"
                       placeholder="Hora finalización actividad"
                       required/> <br/>
            </div>

            <div class="form-group">
                <label for="estadoInscripcion">Estado de la inscripción</label>
                <input class="form-control" list="estado" name="estadoInscripcion" id="estadoInscripcion" value="Programado"
                       placeholder="Seleccione estado" required>

                <datalist id="estado">
                    <option value="Programado"></option>
                    <option value="En proceso"></option>
                    <option value="Concluido"></option>
                    <option value="Cancelado"></option>
                    <option value="Aprobado"></option>
                </datalist>
            </div>
            <br>

            <div class="form-group">
                <label for="idResidente">ID residente</label>
                <input class="form-control"
                       name="idResidente" id="idResidente"
                       type="text"
                       placeholder="Número residente"
                       required/> <br/>
            </div>

            <div class="form-group">
                <label for="nombreActividad">Nombre actividad</label>
                <select class="form-control" name="nombreActividad" id="nombreActividad" required>
                    <option hidden selected>Seleccione una opción</option>
                    <option value="1">Acondicionamiento fisico</option>
                    <option value="2">Zumba</option>
                    <option value="3">Ajedrez</option>
                    <option value="4">Domino</option>
                    <option value="5">Futbolin</option>
                    <option value="6">Ping Pong</option>
                    <option value="7">Parques</option>
                    <option value="8">Poker</option>
                    <option value="9">Rana</option>
                    <option value="10">Evento</option>
                    <option value="11">Sauna</option>
                    <option value="12">Natacion</option>

                </select>
            </div>

        </fieldset>
        <br/>
        <button type="submit" class="btn btn-secondary">Guardar</button>

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
