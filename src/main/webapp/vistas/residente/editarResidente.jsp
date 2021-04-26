
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/templates/parteSuperior.jsp"/>

<section>
    <h1>Actualizar información del residente</h1>
    <form action="http://localhost:8080/Horisoft_war_exploded/ResidenteController" method="post">
        <c:set var="residente" value="${residente}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idResidente" value="${residente.idResidente}">
        <fieldset>

            <legend>Datos del residente</legend>

            <label for="nombreResidente">Nombre</label> <input
                name="nombreResidente" id="nombreResidente" value="${residente.nombre}" type="text"
                placeholder="ej. Juan " autofocus required pattern="[A-Za-z A-Za-z]{2,40}" /> <br />

            <label for="apellidoResidente">Apellido</label> <input
                name="apellidoResidente" id="apellidoResidente" value="${residente.apellido}" type="text"
                placeholder="ej. Rodriguez" required pattern="[A-Za-z A-Za-z]{2,40}"/> <br />

            <label for="identificacionResidente">Identificación</label> <input
                name="identificacionResidente" id="identificacionResidente" value="${residente.identificacion}"type="text"
                placeholder="ej. CC########" required pattern="[A-Z0-9]{2,20}"/> <br />

            <label for="fechaNacimiento">Fecha nacimiento</label> <input
                name="fechaNacimiento" id="fechaNacimiento" value="${residente.fechaNacimiento}" type="date"
                placeholder="fecha de nacimiento" required/> <br />

            <label for="telefonoResidente">Telefono</label> <input
                name="telefonoResidente" id="telefonoResidente" value="${residente.telefono}" type="text"
                placeholder="ej. 32054212##" pattern="[0-9]{7,20}"/> <br />

            <label for="emailResidente">Correo electronico</label> <input
                name="emailResidente" id="emailResidente" value="${residente.email}" type="text"
                placeholder="ej.nombre&#64micorreo.com" /> <br />

            <label for="estadoResidente">Estado residente</label>
            <input list="estado" name="estadoResidente" id="estadoResidente" value="${residente.estado}"
                   placeholder="Seleccione estado" required >

            <datalist id= "estado">
                <option value = "Activo"></option>
                <option value = "Inactivo"></option>
            </datalist> <br>

            <label for="numApartamento">Apartamento</label> <input
                name="numApartamento" id="numApartamento" value="${residente.apartamento}" type="text"
                placeholder="Número apartamento" pattern="[0-9]{3,5}" required/> <br />

            <label for="numTorre">Torre</label> <input
                name="numTorre" id="numTorre" value="${residente.torre}" type="text"
                placeholder="Número torre" required pattern="[A-Z0-9]{1}" /> <br />


            <label for="categoriaResidente">Categoria residente</label> <input
                name="categoriaResidente" id="categoriaResidente" value="${residente.categoria}" type="text"
                placeholder="Categoria residente" required/> <br />


        </fieldset>
        <br /> <input type="submit" value="Guardar" />

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
