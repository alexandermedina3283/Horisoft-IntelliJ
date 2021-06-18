<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>


    <form action="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Datos de la reserva salon social</legend>

            <div class="form-group">
                <label for="fechaPagoReserva">Fecha pago reserva</label>
                <input class="form-control"
                       name="fechaPagoReserva" id="fechaPagoReserva" type="date"
                       placeholder="fecha pago reserva" required autofocus/> <br/>
            </div>

            <div class="form-group">
                <label for="numComprobante">Número comprobante pago</label>
                <input class="form-control"
                       name="numComprobante" id="numComprobante" type="text"
                       placeholder="Número comprobante" required /> <br/>
            </div>

            <div class="form-group">
                <label for="valorDeposito">Valor deposito</label>
                <input class="form-control"
                       name="valorDeposito" id="valorDeposito" type="text"
                       placeholder="valor pagado" required pattern="[0-9]{2,6}"/> <br/>
            </div>

            <div class="form-group">
                <label for="idInscripcionReserva">Numero inscripción</label>
                <input class="form-control" name="idInscripcionReserva" id="idInscripcionReserva" type="text"
                       placeholder="número de inscripcion" required pattern="[0-9]{1,4}"/> <br/>
            </div><br>
            <button type="submit" type="button" class="btn btn-outline-danger float-end mb-2">Enviar formulario</button>

        </fieldset>


    </form>

<jsp:include page="/templates/parteInferior.jsp"/>
