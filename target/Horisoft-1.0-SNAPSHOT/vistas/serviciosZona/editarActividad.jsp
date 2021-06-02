<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<form action="http://localhost:8080/Horisoft_war_exploded/ServiciosZonaServlet" method="post">
    <c:set var="serviciosZona" value="${serviciosZona}"></c:set>
    <input type="hidden" name="opcion" value="editar">
    <input type="hidden" name="idActividad" value="${serviciosZona.idActividad}">
    <fieldset>

        <legend>Editar servicio zona social</legend>


        <div class="form-group">
            <label for="nombreActividad">Nombre actividad</label>
            <input class="form-control" name="nombreActividad" id="nombreActividad" type="text"
                   value="${serviciosZona.nombreActividad}" placeholder="Ingrese nombre de la actividad" required autofocus/> <br/>
        </div>

        <div class="form-group">
            <label for="idZona">Código zona</label>
            <input class="form-control" name="idZona" id="idZona" type="text" placeholder="Ingrese número de la zona"
                   value="${serviciosZona.idZona}" required /> <br/>
        </div>

    </fieldset>
    <br/>
    <button type="submit" class="btn btn-secondary">Guardar</button>

</form>

<jsp:include page="/templates/parteInferior.jsp"/>
