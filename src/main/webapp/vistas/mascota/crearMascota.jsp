
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<div class="d-flex justify-content-center flex-column align-items-start">

    <div class="bg-light border rounded p-2 m-2 mt-3 w-50">

    <form action="http://localhost:8080/Horisoft_war_exploded/MascotaServlet" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Datos de la mascota</legend>

            <div class="form-group">
            <label for="nombreMascota">Nombre</label>
            <input class="form-control" name="nombreMascota" id="nombreMascota" type="text" placeholder="Digite nombre mascota" autofocus pattern="[A-Za-z]{2,40}" required/> <br/>
            </div>

            <div class="form-group">
            <label for="claseMascota">Clase</label>
            <input class="form-control" name="claseMascota" id="claseMascota" type="text" placeholder="ej. Perro/Gato" pattern="[A-Za-z]{2,40}" required/> <br/>
            </div>

            <div class="form-group">
            <label for="numApartamento">Número apartamento</label>
            <input class="form-control" name="numApartamento" id="numApartamento" type="text" placeholder="Ingrese número del apartamento" required pattern="[0-9]{3,5}"/> <br/>
            </div>

            <div class="form-group">
            <label for="numTorre">Número torre</label>
            <input class="form-control" name="numTorre" id="numTorre" type="text" placeholder="Ingrese número de torre" required pattern="[A-Z0-9]{1}"/> <br/>
            </div>
            <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Enviar formulario</button>

        </fieldset>
    </form>

    </div>

</div>



<jsp:include page="/templates/parteInferior.jsp"/>
