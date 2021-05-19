
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/templates/parteSuperior.jsp"/>
<section>

    <form action="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet" method="post">
        <c:set var="apartamento" value="${apartamento}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="apartamento" value="${apartamento.apartamento}">
        <input type="hidden" name="torre" value="${apartamento.torre}">

        <fieldset>

            <legend>Actualización datos del apartamento</legend>

            <div class="form-group">
            <label for="apartamento">Apartamento</label>
            <input class="form-control" name="apartamento" id="apartamento" value="${apartamento.apartamento}"
                   type="number" placeholder="número apartamento" required autofocus pattern="[0-9]{3,5}"/> <br/>
            </div>

            <div class="form-group">
            <label for="torre">Torre</label>
            <input class="form-control" name="torre" id="torre" value="${apartamento.torre}" type="text" placeholder="número torre"
                   required pattern="[A-Z0-9]{1}"/> <br/>
            </div>

            <div class="form-group">
            <label for="Estadocartera">Estado cartera</label>
            <input class="form-control" list="estadocartera" name="cartera" required placeholder="seleccione una opción" value="${apartamento.estadoCartera}">

            <datalist id="estadocartera">
                <option value="Al dia">
                <option value="En mora">
            </datalist>
            </div>

        </fieldset>
        <br/> <button type="submit" class="btn btn-secondary">Guardar</button>

    </form>
</section>

<jsp:include page="/templates/parteInferior.jsp"/>
