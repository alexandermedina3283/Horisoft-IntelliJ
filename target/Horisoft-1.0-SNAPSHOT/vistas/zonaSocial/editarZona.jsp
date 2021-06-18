<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<form action="http://localhost:8080/Horisoft_war_exploded/ZonaSocialServlet" method="post">
    <c:set var="zonaSocial" value="${zonaSocial}"></c:set>
    <input type="hidden" name="opcion" value="editar">
    <input type="hidden" name="idZona" value="${zonaSocial.idZona}">
    <fieldset>

        <legend>Editar zona social</legend>


        <div class="form-group">
            <label for="nombreZona">Nombre zona social</label>
            <input class="form-control" name="nombreZona" id="nombreZona" type="text"
                   value="${zonaSocial.nombreZona}" placeholder="Ingrese nombre de la zona" required autofocus/> <br/>
        </div><br>
        <button type="submit" type="button" class="btn btn-outline-danger float-end mb-2">Enviar formulario</button>

    </fieldset>


</form>

<jsp:include page="/templates/parteInferior.jsp"/>
