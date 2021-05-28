<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

    <form
            action="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet"
            method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Datos del inmueble</legend>

            <div class="form-group">
                <label for="apartamento">Apartamento</label>
                <input class="form-control" name="apartamento" id="apartamento" type="text" placeholder="Ingrese número del apartamento" required
                       autofocus pattern="[0-9]{3,5}"/> <br/>
            </div>

            <div class="form-group">
            <label for="torre">Torre</label>
            <input class="form-control" name="torre" id="torre" type="text" placeholder="Ingrese número de torre" required pattern="[A-Z0-9]{1}"/> <br/>
            </div>

            <div class="form-group">
            <label for="Estadocartera">Estado cartera</label>
            <input class="form-control" list="estadocartera" name="cartera" required placeholder="Seleccione una opción ">

            <datalist id="estadocartera">
                <option value="Al dia">
                <option value="En mora">
            </datalist>
            </div>

        </fieldset>
        <br/> <button type="submit" class="btn btn-secondary">Guardar</button>

    </form>


<jsp:include page="/templates/parteInferior.jsp"/>