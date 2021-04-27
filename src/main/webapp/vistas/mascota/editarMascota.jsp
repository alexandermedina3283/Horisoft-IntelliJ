<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/templates/parteSuperior.jsp"/>

<section>

    <form action="http://localhost:8080/Horisoft_war_exploded/MascotaController" method="post">
        <c:set var="mascota" value="${mascota}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idMascota" value="${mascota.idMascota}">

        <fieldset>

            <legend>Actualización datos de la mascota </legend>

            <div class="form-group">
            <label for="nombreMascota">Nombre</label>
            <input class="form-control" name="nombreMascota" id="nombreMascota" value="${mascota.nombre}" type="text" placeholder="Digite nombre mascota" autofocus pattern="[A-Za-z]{2,40}" required/> <br />
            </div>

            <div class="form-group">
            <label for="claseMascota">Clase</label>
            <input class="form-control" name="claseMascota" id="claseMascota" value="${mascota.clase}" type="text" placeholder="ej. Perro/Gato" pattern="[A-Za-z]{2,40}" required/> <br />
            </div>

            <div class="form-group">
            <label for="numApartamento">Numero apartamento</label>
            <input class="form-control" name="numApartamento" id="numApartamento" value="${mascota.apartamento}" type="number" placeholder="número apartamento" required pattern="[0-9]{3,5}"/> <br />
            </div>

            <div class="form-group">
            <label for="numTorre">Numero torre</label>
            <input class="form-control" name="numTorre" id="numTorre" value="${mascota.torre}" type="text" placeholder="número torre" required pattern="[A-Z0-9]{1}"/> <br />
            </div>

        </fieldset>

        <br /> <button type="submit" class="btn btn-secondary">Guardar</button>
    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>