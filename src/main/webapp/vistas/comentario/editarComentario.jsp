<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>
<section>

    <form action="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet" method="post">
        <c:set var="comentario" value="${comentario}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idComentario" value="${comentario.idComentario}">

        <fieldset>

            <legend>Editar comentario</legend>


            <div class="form-group">
                <label for="descripcionComentario">Descripción</label>
                <input class="form-control" name="descripcionComentario" id="descripcionComentario"
                       value="${comentario.descripcionComentario}" type="text" placeholder="comentario" required/> <br/>
            </div>


            <div class="form-group">
                <label for="autorComentario">Nombre</label>
                <input class="form-control" name="autorComentario" id="autorComentario"
                       value="${comentario.autorComentario}" type="text" placeholder="responsable del comentario"
                       required/> <br/>
            </div>

            <div class="form-group">
                <label for="idInscripcion">Numero inscripción</label>
                <input class="form-control" name="idInscripcion" id="idInscripcion" value="${comentario.idInscripcion}"
                       type="text" placeholder="número de inscripcion" required/> <br/>
            </div>

        </fieldset>
        <br/>
        <button type="submit" class="btn btn-secondary">Guardar</button>

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
