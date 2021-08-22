<%@ page import="java.text.SimpleDateFormat" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<div class="d-flex justify-content-center flex-column align-items-start">

    <div class="bg-light border rounded p-2 m-2 mt-3 w-50">
    <form action="InvitadoServlet" method="post">
        <c:set var="invitado" value="${invitado}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idInvitado" value="${invitado.idInvitado}">
        <fieldset>

            <legend>Actualizar un invitado</legend>


            <div class="form-group">
                <label for="nombreInvitado">Nombre</label>
                <input class="form-control" name="nombreInvitado" id="nombreInvitado" value="${invitado.nombreInvitado}"type="text" placeholder="nombre del invitado" required autofocus pattern="[A-Za-z A-Za-z]{2,40}"/> <br/>
            </div>

            <div class="form-group">
                <label for="apellidoInvitado">Apellido</label>
                <input class="form-control" name="apellidoInvitado" id="apellidoInvitado" value="${invitado.apellidoInvitado}" type="text" placeholder="apellido del invitado" required pattern="[A-Za-z A-Za-z]{2,40}"/> <br/>
            </div>

            <div class="form-group">
                <label for="identificacionInvitado">Identificación</label>
                <input class="form-control" name="identificacionInvitado" id="identificacionInvitado" value="${invitado.identificacionInvitado}"type="text" placeholder="identificación del invitado" required pattern="[A-Z0-9]{2,20}"/> <br/>
            </div>

            <div class="form-group">
                <label for="idInscripcionInvitado">Numero inscripción</label>
                <input class="form-control" name="idInscripcionInvitado" id="idInscripcionInvitado" value="${invitado.idInscripcion}"type="text" placeholder="ID inscripcion" required pattern="[0-9]{1,4}"/> <br/>
            </div>
            <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Enviar formulario</button>

        </fieldset>


    </form>
    </div>

</div>

<jsp:include page="/templates/parteInferior.jsp"/>
