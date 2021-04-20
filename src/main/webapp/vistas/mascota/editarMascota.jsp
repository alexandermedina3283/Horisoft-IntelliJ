<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 19/04/2021
  Time: 6:08 p. m.
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
    <h1>Actualizar informacion de la mascota</h1>
    <form action="http://localhost:8080/Horisoft_war_exploded/MascotaController" method="post">
        <c:set var="mascota" value="${mascota}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idMascota" value="${mascota.idMascota}">

        <fieldset>

            <legend>Datos de la mascota </legend>

            <label for="nombreMascota">Nombre</label>
            <input name="nombreMascota" id="nombreMascota" value="${mascota.nombre}" type="text" placeholder="Digite nombre mascota" /> <br />

            <label for="claseMascota">Clase</label>
            <input name="claseMascota" id="claseMascota" value="${mascota.clase}" type="text" placeholder="Digite clase de mascota" /> <br />

            <label for="numApartamento">Numero apartamento</label>
            <input name="numApartamento" id="numApartamento" value="${mascota.apartamento}" type="number" placeholder="Digite numero apartamento" /> <br />

            <label for="numTorre">Numero torre</label>
            <input name="numTorre" id="numTorre" value="${mascota.torre}" type="text" placeholder="Digite numero torre" /> <br />

        </fieldset>

        <br /> <input type="submit" value="Guardar" />
    </form>
</section>
</body>
</html>
