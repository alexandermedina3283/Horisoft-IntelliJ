<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 19/04/2021
  Time: 6:59 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section>
    <h1>Actualizar información del parqueadero - vehículo</h1>
    <form action="http://localhost:8080/Horisoft_war_exploded/ParqueaderoController" method="post">
        <c:set var="parqueadero" value="${parqueadero}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idMascota" value="${parqueadero.idParqueadero}">
        <fieldset>
            <legend>Datos del parqueadero - vehiculo </legend>
            <label for="idParqueadero">Numero parqueadero</label>
            <input name="idParqueadero" id="idParqueadero" value="${parqueadero.idParqueadero}" type="text" placeholder="Escriba número parqueadero" /> <br />

            <label for="zonasparqueo">Ubicación</label>
            <input list="zonasparqueo" name="ubicacionParqueadero" value="${parqueadero.ubicacionParqueadero}">

            <datalist id="zonasparqueo">
                <option value="Sotano">
                <option value="Piso 1">
                <option value="Piso 2">
                <option value="Piso 3">
                <option value="Azotea">
            </datalist>

            <label for="placaVehiculo">Placa</label>
            <input name="placaVehiculo" id="placaVehiculo" value="${parqueadero.placaVehiculo}" type="text" placeholder="Placa vehiculo" /> <br />

            <label for="modeloVehiculo">Modelo</label>
            <input name="modeloVehiculo" id="modeloVehiculo" value="${parqueadero.modeloVehiculo}" type="text" placeholder="Modelo vehiculo" /> <br />

            <label for="colorVehiculo">Color</label>
            <input name="colorVehiculo" id="colorVehiculo" value="${parqueadero.colorVehiculo}" type="text" placeholder="Color vehiculo" /> <br />

            <label for="marcaVehiculo">Marca</label>
            <input name="marcaVehiculo" id="marcaVehiculo" value="${parqueadero.marcaVehiculo}" type="text" placeholder="Marca vehiculo" /> <br />

            <label for="numApartamento">Apartamento</label>
            <input name="numApartamento" id="numApartamento" value="${parqueadero.apartamento}"type="text" placeholder="Número apartamento" /> <br />

            <label for="numTorre">Torre</label>
            <input name="numTorre" id="numTorre" value="${parqueadero.torre}" type="text" placeholder="Número torre" /> <br />

            <label for="claseVehiculo">Clase vehículo</label>
            <input name="claseVehiculo" id="claseVehiculo" value="${parqueadero.claseVehiculo}" type="text" placeholder="clase vehiculo" /> <br />

        </fieldset>
        <br /> <input type="submit" value="Guardar" />

    </form>
</section>
</body>
</html>
