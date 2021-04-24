
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>
<section>
    <h1>Formulario de registro</h1>
    <form action="http://localhost:8080/Horisoft_war_exploded/MascotaController" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Datos de la mascota</legend>

            <label for="nombreMascota">Nombre</label>
            <input name="nombreMascota" id="nombreMascota" type="text" placeholder="Digite nombre mascota"/> <br/>

            <label for="claseMascota">Clase</label>
            <input name="claseMascota" id="claseMascota" type="text" placeholder="Digite clase de mascota"/> <br/>

            <label for="numApartamento">Numero apartamento</label>
            <input name="numApartamento" id="numApartamento" type="text" placeholder="Digite numero apartamento"/> <br/>

            <label for="numTorre">Numero torre</label>
            <input name="numTorre" id="numTorre" type="text" placeholder="Digite numero torre"/> <br/>

        </fieldset>
        <br/> <input type="submit" value="Guardar"/>

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
