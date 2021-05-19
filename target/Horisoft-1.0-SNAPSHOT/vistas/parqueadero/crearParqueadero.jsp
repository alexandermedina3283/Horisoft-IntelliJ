
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/templates/parteSuperior.jsp"/>

<section>

    <form action="http://localhost:8080/Horisoft_war_exploded/ParqueaderoServlet" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Datos del parqueadero - vehículo </legend>

            <div class="form-group">
            <label for="idParqueadero">Número parqueadero</label>
            <input class="form-control" name="idParqueadero" id="idParqueadero" type="text" placeholder="Digite número parqueadero" autofocus required pattern="[A-Za-z0-9]{1,6}"/><br>
            </div>

            <div class="form-group">
            <label for="zonasparqueo">Ubicación</label>
            <input class="form-control" list="zonasparqueo" name="ubicacionParqueadero" placeholder="Sitio parqueo" required><br>
            <datalist id="zonasparqueo">
                <option value="Sotano">
                <option value="Piso 1">
                <option value="Piso 2">
                <option value="Piso 3">
                <option value="Azotea">
            </datalist>
            </div>

            <div class="form-group">
            <label for="placaVehiculo">Placa</label>
            <input class="form-control" name="placaVehiculo" id="placaVehiculo" type="text" placeholder="Placa vehiculo" required pattern="[A-Z0-9]{6}"/><br>
            </div>

            <div class="form-group">
            <label for="modeloVehiculo">Modelo</label>
            <input class="form-control" name="modeloVehiculo" id="modeloVehiculo" type="text" placeholder="año" required pattern="[0-9]{4}"/><br>
            </div>

            <div class="form-group">
            <label for="colorVehiculo">Color</label>
            <input class="form-control" name="colorVehiculo" id="colorVehiculo" type="text" placeholder="ej.Plata" required pattern="[a-zA-Z]{2,15}"/><br>
            </div>

            <div class="form-group">
            <label for="marcaVehiculo">Marca</label>
            <input class="form-control" name="marcaVehiculo" id="marcaVehiculo" type="text" placeholder="ej.Nissan" required pattern="[a-zA-Z]{2,20}"/><br>
            </div>

            <div class="form-group">
            <label for="numApartamento">Apartamento</label>
            <input class="form-control" name="numApartamento" id="numApartamento" type="text" placeholder="Número apartamento" pattern="[0-9]{3,5}" required/><br>
            </div>

            <div class="form-group">
            <label for="numTorre">Torre</label>
            <input class="form-control" name="numTorre" id="numTorre" type="text" placeholder="Número torre" required pattern="[A-Z0-9]{1}"/><br>
            </div>

            <div class="form-group">
            <label for="claseVehiculo">Clase vehiculo</label>
            <select class="form-control" name="claseVehiculo" id="claseVehiculo">
                <option hidden selected>Seleccione una opción</option>
                <option value="1">Automovil</option>
                <option value="2">Motocicleta</option>
                <option value="3">Camioneta</option>
                <option value="4">Taxi</option>
                <option value="5">Vans</option>
            </select>
            </div>

        </fieldset>
        <br /> <button type="submit" class="btn btn-secondary">Guardar</button>

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>