
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/templates/parteSuperior.jsp"/>

<section>
    <h1>Formulario de registro</h1>
    <form action="http://localhost:8080/Horisoft_war_exploded/ParqueaderoController" method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>
            <legend>Datos del parqueadero - vehículo </legend>
            <label for="idParqueadero">Número parqueadero</label>
            <input name="idParqueadero" id="idParqueadero" type="text" placeholder="Digite número parqueadero" autofocus required pattern="[A-Za-z0-9]{1,6}"/> <br />

            <label for="zonasparqueo">Ubicación</label>
            <input list="zonasparqueo" name="ubicacionParqueadero" placeholder="Sitio parqueo" required>

            <datalist id="zonasparqueo">
                <option value="Sotano">
                <option value="Piso 1">
                <option value="Piso 2">
                <option value="Piso 3">
                <option value="Azotea">
            </datalist>

            <label for="placaVehiculo">Placa</label>
            <input name="placaVehiculo" id="placaVehiculo" type="text" placeholder="Placa vehiculo" required pattern="[A-Z0-9]{6}"/> <br />

            <label for="modeloVehiculo">Modelo</label>
            <input name="modeloVehiculo" id="modeloVehiculo" type="text" placeholder="año" required pattern="[0-9]{4}"/> <br />

            <label for="colorVehiculo">Color</label>
            <input name="colorVehiculo" id="colorVehiculo" type="text" placeholder="ej.Plata" required pattern="[a-zA-Z]{2,15}"/> <br />

            <label for="marcaVehiculo">Marca</label>
            <input name="marcaVehiculo" id="marcaVehiculo" type="text" placeholder="ej.Nissan" required pattern="[a-zA-Z]{2,20}"/> <br />

            <label for="numApartamento">Apartamento</label>
            <input name="numApartamento" id="numApartamento" type="text" placeholder="Número apartamento" pattern="[0-9]{3,5}" required/> <br />

            <label for="numTorre">Torre</label>
            <input name="numTorre" id="numTorre" type="text" placeholder="Número torre" required pattern="[A-Z0-9]{1}"/> <br />

            <label for="claseVehiculo">Clase vehiculo</label>

            <select name="claseVehiculo" id="claseVehiculo">
                <option hidden selected>Seleccione una opción</option>
                <option value="1">Automovil</option>
                <option value="2">Motocicleta</option>
                <option value="3">Camioneta</option>
                <option value="4">Taxi</option>
                <option value="5">Vans</option>
            </select>

        </fieldset>
        <br /> <input type="submit" value="Guardar" />

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>