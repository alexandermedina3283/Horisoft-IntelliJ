
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>
<section>
    <h1>Formulario de registro</h1>
    <form action="http://localhost:8080/Horisoft_war_exploded/ResidenteController" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Datos del residente</legend>

            <label for="nombreResidente">Nombre</label> <input
                name="nombreResidente" id="nombreResidente" type="text"
                placeholder="ej. Juan " autofocus required pattern="[A-Za-z A-Za-z]{2,40}"/> <br />

            <label for="apellidoResidente">Apellido</label> <input
                name="apellidoResidente" id="apellidoResidente" type="text"
                placeholder="ej. Rodriguez" required pattern="[A-Za-z A-Za-z]{2,40}"/> <br />

            <label for="identificacionResidente">Identificación</label> <input
                name="identificacionResidente" id="identificacionResidente" type="text"
                placeholder="ej. CC########" required pattern="[A-Z0-9]{2,20}"/> <br />

            <label for="fechaNacimiento">Fecha nacimiento</label> <input
                name="fechaNacimiento" id="fechaNacimiento" type="date"
                placeholder="fecha de nacimiento" required/> <br />

            <label for="telefonoResidente">Telefono</label> <input
                name="telefonoResidente" id="telefonoResidente" type="text"
                placeholder="ej. 32054212##" pattern="[0-9]{7,20}"/> <br />

            <label for="emailResidente">Correo electronico</label> <input
                name="emailResidente" id="emailResidente" type="text"
                placeholder="ej.nombre&#64micorreo.com" /> <br />

            <label for="estadoResidente">Estado residente</label>
            <input list="estado" name="estadoResidente" id="estadoResidente"
                   placeholder="Seleccione estado" required>

            <datalist id= "estado">
                <option value = "Activo"></option>
                <option value = "Inactivo"></option>
            </datalist> <br>

            <label for="numApartamento">Apartamento</label> <input
                name="numApartamento" id="numApartamento" type="text"
                placeholder="Número apartamento" required/> <br />

            <label for="numTorre">Torre</label> <input
                name="numTorre" id="numTorre" type="text"
                placeholder="Número torre" required/> <br />


            <label for="categoriaResidente">Categoria residente</label>
            <select name="categoriaResidente" id="categoriaResidente" >
                <option hidden selected>Seleccione una opción</option>
                <option value="1">Propietario</option>
                <option value="2">Arrendatario</option>
                <option value="3">Nucleo propietario</option>
                <option value="4">Nucleo arrendatario</option>
            </select>


        </fieldset>
        <br /> <input type="submit" value="Guardar" />

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
