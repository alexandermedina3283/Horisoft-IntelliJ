<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>
<section>

    <form action="http://localhost:8080/Horisoft_war_exploded/SalonSocialController" method="post">
        <c:set var="salonSocial" value="${salonSocial}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idInscripcion" value="${salonSocial.idInscripcion}">

        <fieldset>

            <legend>Actualizacion reserva salon social</legend>

            <div class="form-group">
                <label for="fechaPagoReserva">Fecha pago reserva</label>
                <input class="form-control"
                       name="fechaPagoReserva" id="fechaPagoReserva" value="${salonSocial.fechaPago}" type="date"
                       placeholder="fecha pago reserva" required/> <br/>
            </div>

            <div class="form-group">
                <label for="numComprobante">Número comprobante pago</label>
                <input class="form-control"
                       name="numComprobante" id="numComprobante" value="${salonSocial.numeroComprobante}" type="text"
                       placeholder="Número comprobante" required /> <br/>
            </div>

            <div class="form-group">
                <label for="valorDeposito">Valor deposito</label>
                <input class="form-control"
                       name="valorDeposito" id="valorDeposito" value="${salonSocial.valorDeposito}" type="text"
                       placeholder="valor pagado" required /> <br/>
            </div>

            <div class="form-group">
                <label for="idInscripcionReserva">Numero inscripción</label>
                <input class="form-control" name="idInscripcionReserva" id="idInscripcionReserva" value="${salonSocial.idInscripcion}" type="text"
                       placeholder="número de inscripcion" required/> <br/>
            </div>

        </fieldset>
        <br/> <button type="submit" class="btn btn-secondary">Guardar</button>

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
