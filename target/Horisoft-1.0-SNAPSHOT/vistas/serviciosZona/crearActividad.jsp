<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<form action="http://localhost:8080/Horisoft_war_exploded/ServiciosZonaServlet" method="post">
    <input type="hidden" name="opcion" value="guardar">
    <fieldset>

        <legend>Crear actividad en zona social</legend>


        <div class="form-group">
            <label for="nombreActividad">Nombre actividad</label>
            <input class="form-control" name="nombreActividad" id="nombreActividad" type="text"
                   placeholder="Ingrese nombre de la actividad" required autofocus/> <br/>
        </div>

        <div class="form-group">
            <label for="idZona">Código zona</label>
            <input class="form-control" name="idZona" id="idZona" type="text" placeholder="Ingrese número de la zona" required /> <br/>
        </div>

    </fieldset>
    <br/>
    <button type="submit" class="btn btn-secondary">Guardar</button>

</form>

<jsp:include page="/templates/parteInferior.jsp"/>
