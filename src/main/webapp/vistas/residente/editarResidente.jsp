
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
                placeholder="Escriba nombre residente" /> <br />

            <label for="apellidoResidente">Apellido</label> <input
                name="apellidoResidente" id="apellidoResidente" value="${residente.apellido}" type="text"
                placeholder="apellido residente" /> <br />

            <label for="identificacionResidente">Identificación</label> <input
                name="identificacionResidente" id="identificacionResidente" value="${residente.identificacion}"type="text"
                placeholder="numero identificacion CC########" /> <br />

            <label for="fechaNacimiento">Fecha nacimiento</label> <input
                name="fechaNacimiento" id="fechaNacimiento" value="${residente.fechaNacimiento}" type="date"
                placeholder="fecha de nacimiento" /> <br />

            <label for="telefonoResidente">Telefono</label> <input
                name="telefonoResidente" id="telefonoResidente" value="${residente.telefono}" type="text"
                placeholder="telefono residente" /> <br />

            <label for="emailResidente">Correo electronico</label> <input
                name="emailResidente" id="emailResidente" value="${residente.email}" type="text"
                placeholder="correo electronico residente" /> <br />

            <label for="estadoResidente">Estado residente</label>
            <input list="estado" name="estadoResidente" id="estadoResidente" value="${residente.estado}"
                   placeholder="Seleccione estado" >

            <datalist id= "estado">
                <option value = "Activo"></option>
                <option value = "Inactivo"></option>
            </datalist> <br>

            <label for="numApartamento">Apartamento</label> <input
                name="numApartamento" id="numApartamento" value="${residente.apartamento}" type="text"
                placeholder="Número apartamento" /> <br />

            <label for="numTorre">Torre</label> <input
                name="numTorre" id="numTorre" value="${residente.torre}" type="text"
                placeholder="Número torre" /> <br />


            <label for="categoriaResidente">Categoria residente</label> <input
                name="categoriaResidente" id="categoriaResidente" value="${residente.categoria}" type="text"
                placeholder="Categoria residente" /> <br />


        </fieldset>
        <br /> <input type="submit" value="Guardar" />

    </form>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>
