<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<form action="http://localhost:8080/Horisoft_war_exploded/CategoriaResidenteServlet" method="post">
    <c:set var="categoriaResidente" value="${categoriaResidente}"></c:set>
    <input type="hidden" name="opcion" value="editar">
    <input type="hidden" name="idCategoria" value="${categoriaResidente.idCategoria}">
    <fieldset>

        <legend>Editar categoria residente</legend>


        <div class="form-group">
            <label for="nombreCategoria">Nombre Categoria</label>
            <input class="form-control" name="nombreCategoria" id="nombreCategoria" type="text"
                   value="${categoriaResidente.nombreCategoria}" placeholder="Ingrese categoria del residente" required autofocus/> <br/>
        </div>

    </fieldset>
    <br/>
    <button type="submit" class="btn btn-secondary">Guardar</button>

</form>

<jsp:include page="/templates/parteInferior.jsp"/>
