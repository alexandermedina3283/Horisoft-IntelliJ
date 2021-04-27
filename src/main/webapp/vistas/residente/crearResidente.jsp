<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>
<section>

    <form action="http://localhost:8080/Horisoft_war_exploded/ResidenteController" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Datos del residente</legend>

            <div class="form-group">
            <label for="nombreResidente">Nombre</label> <input class="form-control"
                name="nombreResidente" id="nombreResidente" type="text"
                placeholder="ej. Juan " autofocus required pattern="[A-Za-z A-Za-z]{2,40}"/> <br/>
            </div>

            <div class="form-group">
            <label for="apellidoResidente">Apellido</label> <input class="form-control"
                name="apellidoResidente" id="apellidoResidente" type="text"
                placeholder="ej. Rodriguez" required pattern="[A-Za-z A-Za-z]{2,40}"/> <br/>
            </div>

            <div class="form-group">
            <label for="identificacionResidente">Identificación</label> <input class="form-control"
                name="identificacionResidente" id="identificacionResidente" type="text"
                placeholder="ej. CC########" required pattern="[A-Z0-9]{2,20}"/> <br/>
            </div>

            <div class="form-group">
            <label for="fechaNacimiento">Fecha nacimiento</label> <input class="form-control"
                name="fechaNacimiento" id="fechaNacimiento" type="date"
                placeholder="fecha de nacimiento" required/> <br/>
            </div>

            <div class="form-group">
            <label for="telefonoResidente">Telefono</label> <input class="form-control"
                name="telefonoResidente" id="telefonoResidente" type="text"
                placeholder="ej. 32054212##" pattern="[0-9]{7,20}"/> <br/>
            </div>

            <div class="form-group">
            <label for="emailResidente">Correo electronico</label> <input class="form-control"
                name="emailResidente" id="emailResidente" type="text"
                placeholder="ej.nombre&#64micorreo.com"/> <br/>
            </div>

            <div class="form-group">
            <label for="estadoResidente">Estado residente</label>
            <input class="form-control" list="estado" name="estadoResidente" id="estadoResidente"
                   placeholder="Seleccione estado" required>

            <datalist id="estado">
                <option value="Activo"></option>
                <option value="Inactivo"></option>
            </datalist>
            </div><br>

            <div class="form-group">
            <label for="numApartamento">Apartamento</label> <input class="form-control"
                name="numApartamento" id="numApartamento" type="text"
                placeholder="Número apartamento" pattern="[0-9]{3,5}" required/> <br/>
            </div>

            <div class="form-group">
            <label for="numTorre">Torre</label> <input class="form-control"
                name="numTorre" id="numTorre" type="text"
                placeholder="Número torre" required pattern="[A-Z0-9]{1}"/> <br/>
            </div>

            <div class="form-group">
            <label for="categoriaResidente">Categoria residente</label>
            <select class="form-control" name="categoriaResidente" id="categoriaResidente" required>
                <option hidden selected>Seleccione una opción</option>
                <option value="1">Propietario</option>
                <option value="2">Arrendatario</option>
                <option value="3">Nucleo propietario</option>
                <option value="4">Nucleo arrendatario</option>
            </select>
            </div>


        </fieldset>
        <br/> <button type="submit" class="btn btn-secondary">Guardar</button>

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
