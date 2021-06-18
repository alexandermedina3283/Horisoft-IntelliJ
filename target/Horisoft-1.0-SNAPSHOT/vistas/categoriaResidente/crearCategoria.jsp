<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<form action="http://localhost:8080/Horisoft_war_exploded/CategoriaResidenteServlet" method="post">
    <input type="hidden" name="opcion" value="guardar">
    <fieldset>

        <legend>Registrar categoria residente</legend>


        <div class="form-group">
            <label for="nombreCategoria">Nombre Categoria</label>
            <input class="form-control" name="nombreCategoria" id="nombreCategoria" type="text"
                   placeholder="Ingrese categoria del residente" required autofocus/> <br/>
        </div><br>
        <button type="submit" type="button" class="btn btn-outline-danger float-end mb-2">Enviar formulario</button>

    </fieldset>


</form>

<jsp:include page="/templates/parteInferior.jsp"/>
