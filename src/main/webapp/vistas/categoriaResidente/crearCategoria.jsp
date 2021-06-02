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
        </div>

    </fieldset>
    <br/>
    <button type="submit" class="btn btn-secondary">Guardar</button>

</form>

<jsp:include page="/templates/parteInferior.jsp"/>
