<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<div class="d-flex justify-content-center flex-column align-items-start">

    <div class="bg-light border rounded p-2 m-2 mt-3 w-50">

    <form action="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Registrar un comentario</legend>


            <div class="form-group">
                <label for="descripcionComentario">Descripción</label>
                <input class="form-control" name="descripcionComentario" id="descripcionComentario" type="text"
                       placeholder="Ingrese comentario, sugerencia o recomendación" required autofocus/> <br/>
            </div>


            <div class="form-group">
                <label for="autorComentario">Nombre</label>
                <input class="form-control" name="autorComentario" id="autorComentario" type="text"
                       placeholder="Nombre de quien realiza el comentario" required pattern="[A-Za-z A-Za-z]{2,40}"/> <br/>
            </div>

            <div class="form-group">
                <label for="idInscripcion">Numero inscripción</label>
                <input class="form-control" name="idInscripcion" id="idInscripcion" type="text"
                       placeholder="número de inscripcion" required pattern="[0-9]{1,4}"/> <br/>
            </div>
            <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Enviar formulario</button>

        </fieldset>

    </form>
    </div>

</div>

<jsp:include page="/templates/parteInferior.jsp"/>
