<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<%java.text.DateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");%>

<div class="d-flex justify-content-center flex-column align-items-start">

    <div class="bg-light border rounded p-2 m-2 mt-3 w-50">

    <form action="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>


            <legend>Datos de la inscripción</legend>

            <div class="form-group">
                <label for="nombreActividad">Actividad a desarrollar</label>
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
            </div> <br>

            <div class="form-group">
                <label for="fechaEntrada">Fecha de inicio</label>
                <input class="form-control"
                       name="fechaEntrada" id="fechaEntrada"
                       type="date" value="<%= fecha.format(new java.util.Date())%>"
                       placeholder="Fecha inicio actividad"
                       required/> <br/>
            </div>

            <div class="form-group">
                <label for="horaEntrada">Hora de inicio</label>
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
                </datalist> <br>
            </div>

            <div class="form-group">
            <label for="fechaSalida">Fecha de finalización</label>
            <input class="form-control"
                   name="fechaSalida" id="fechaSalida"
                   type="date" required value="<%= fecha.format(new java.util.Date())%>"
                   placeholder="Fecha finalización actividad"
                   /> <br>
            </div>

            <div class="form-group">
                <label for="horaSalida">Hora de finalización</label>
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
                </datalist> <br>
            </div>

            <div class="form-group">
                <label hidden for="estadoInscripcion">Estado de la inscripción</label>
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
            <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Enviar formulario</button>

        </fieldset>
    </form>
    </div>

</div>




<jsp:include page="/templates/parteInferior.jsp"/>
