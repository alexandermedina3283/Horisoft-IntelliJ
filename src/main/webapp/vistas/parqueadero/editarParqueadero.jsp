
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/templates/parteSuperior.jsp"/>
<section>
    <h1>Actualizar información del parqueadero - vehículo</h1>
    <form action="http://localhost:8080/Horisoft_war_exploded/ParqueaderoController" method="post">
        <c:set var="parqueadero" value="${parqueadero}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idMascota" value="${parqueadero.idParqueadero}">
        <fieldset>
            <legend>Datos del parqueadero - vehiculo </legend>
            <label for="idParqueadero">Numero parqueadero</label>
            <input name="idParqueadero" id="idParqueadero" value="${parqueadero.idParqueadero}" type="text" placeholder="Digite número parqueadero" autofocus required pattern="[A-Za-z0-9]{1,6}" /> <br />

            <label for="zonasparqueo">Ubicación</label>
            <input list="zonasparqueo" name="ubicacionParqueadero" placeholder="Sitio parqueo" required value="${parqueadero.ubicacionParqueadero}">

            <datalist id="zonasparqueo">
                <option value="Sotano">
                <option value="Piso 1">
                <option value="Piso 2">
                <option value="Piso 3">
                <option value="Azotea">
            </datalist>

            <label for="placaVehiculo">Placa</label>
            <input name="placaVehiculo" id="placaVehiculo" value="${parqueadero.placaVehiculo}" type="text" placeholder="Placa vehiculo" required pattern="[A-Z0-9]{6}" /> <br />

            <label for="modeloVehiculo">Modelo</label>
            <input name="modeloVehiculo" id="modeloVehiculo" value="${parqueadero.modeloVehiculo}" type="text" placeholder="año" required pattern="[0-9]{4}" /> <br />

            <label for="colorVehiculo">Color</label>
            <input name="colorVehiculo" id="colorVehiculo" value="${parqueadero.colorVehiculo}" type="text" placeholder="ej.Plata" required pattern="[a-zA-Z]{2,15}" /> <br />

            <label for="marcaVehiculo">Marca</label>
            <input name="marcaVehiculo" id="marcaVehiculo" value="${parqueadero.marcaVehiculo}" type="text" placeholder="ej.Nissan" required pattern="[a-zA-Z]{2,20}" /> <br />

            <label for="numApartamento">Apartamento</label>
            <input name="numApartamento" id="numApartamento" value="${parqueadero.apartamento}"type="text" placeholder="Número apartamento" pattern="[0-9]{3,5}" required /> <br />

            <label for="numTorre">Torre</label>
            <input name="numTorre" id="numTorre" value="${parqueadero.torre}" type="text" placeholder="Número torre" required pattern="[A-Z0-9]{1}" /> <br />

            <label for="claseVehiculo">Clase vehículo</label>
            <input name="claseVehiculo" id="claseVehiculo" value="${parqueadero.claseVehiculo}" type="text" placeholder="clase vehiculo" required/> <br />

        </fieldset>
        <br /> <input type="submit" value="Guardar" />

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
