<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<div class="d-flex justify-content-center flex-column align-items-start">

    <div class="bg-light border rounded p-2 m-2 mt-3 w-50">

    <form action="InvitadoServlet" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Registrar un invitado</legend>


            <div class="form-group">
                <label for="nombreInvitado">Nombre</label>
                <input class="form-control" name="nombreInvitado" id="nombreInvitado" type="text" placeholder="Ej. Juan" required autofocus pattern="[A-ZÑa-zñ A-ZÑa-zñ]{2,40}"/> <br/>
            </div>

            <div class="form-group">
                <label for="apellidoInvitado">Apellido</label>
                <input class="form-control" name="apellidoInvitado" id="apellidoInvitado" type="text" placeholder="Ej. Gutierrez" required pattern="[A-ZÑa-zñ A-ZÑa-zñ]{2,40}"/> <br/>
            </div>

            <div class="form-group">
                <label for="identificacionInvitado">Identificación</label>
                <input class="form-control" name="identificacionInvitado" id="identificacionInvitado" type="text" placeholder="Ej. CC789654##" required pattern="[A-Z0-9]{2,20}"/> <br/>
            </div>

            <div class="form-group">
                <label for="idInscripcionInvitado">Número inscripción</label>
                <input class="form-control" name="idInscripcionInvitado" id="idInscripcionInvitado" type="text" placeholder="Ingrese número de inscripcion" required pattern="[0-9]{1,4}"/> <br/>
            </div>
            <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Enviar formulario</button>

        </fieldset>


    </form>
    </div>

</div>

<jsp:include page="/templates/parteInferior.jsp"/>
