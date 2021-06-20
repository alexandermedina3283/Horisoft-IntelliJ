<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<div class="d-flex justify-content-center flex-column align-items-start">

    <div class="bg-light border rounded p-2 m-2 mt-3 w-50">
    <form action="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet" method="post">
        <c:set var="salonSocial" value="${salonSocial}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idInscripcion" value="${salonSocial.idInscripcion}">

        <fieldset>

            <legend>Actualizacion reserva salon social</legend>

            <div class="form-group">
                <label for="fechaPagoReserva">Fecha pago reserva</label>
                <input class="form-control"
                       name="fechaPagoReserva" id="fechaPagoReserva" value="${salonSocial.fechaPago}" type="date"
                       placeholder="fecha pago reserva" required autofocus/> <br/>
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
                       placeholder="valor pagado" required pattern="[0-9]{2,6}"/> <br/>
            </div>

            <div class="form-group">
                <label for="idInscripcionReserva">Numero inscripción</label>
                <input class="form-control" name="idInscripcionReserva" id="idInscripcionReserva" value="${salonSocial.idInscripcion}" type="text"
                       placeholder="número de inscripcion" required pattern="[0-9]{1,4}"/> <br/>
            </div>
            <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Enviar formulario</button>

        </fieldset>


    </form>
    </div>

</div>

<jsp:include page="/templates/parteInferior.jsp"/>
