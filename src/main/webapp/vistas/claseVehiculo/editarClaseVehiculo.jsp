<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<form action="http://localhost:8080/Horisoft_war_exploded/ClaseVehiculoServlet" method="post">
    <c:set var="claseVehiculo" value="${claseVehiculo}"></c:set>
    <input type="hidden" name="opcion" value="editar">
    <input type="hidden" name="idClaseVehiculo" value="${claseVehiculo.idClaseVehiculo}">
    <fieldset>

        <legend>Editar clase vehículo</legend>


        <div class="form-group">
            <label for="nombreClaseVehiculo">Nombre Clase</label>
            <input class="form-control" name="nombreClaseVehiculo" id="nombreClaseVehiculo" type="text"
                   value="${claseVehiculo.nombreClaseVehiculo}" placeholder="Ingrese clase de vehículo" required autofocus/> <br/>
        </div><br>
        <button type="submit" type="button" class="btn btn-outline-danger float-end mb-2">Enviar formulario</button>

    </fieldset>


</form>

<jsp:include page="/templates/parteInferior.jsp"/>