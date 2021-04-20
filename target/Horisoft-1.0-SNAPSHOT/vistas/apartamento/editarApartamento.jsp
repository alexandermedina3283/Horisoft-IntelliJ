<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 19/04/2021
  Time: 4:27 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<section>
    <h1>Formulario de actualización residentes</h1>
    <h3>Sección uno</h3>
    <form action="http://localhost:8080/Horisoft_war_exploded/ApartamentoController" method="post">
        <c:set var="apartamento" value="${apartamento}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="apartamento" value="${apartamento.apartamento}">
        <input type="hidden" name="torre" value="${apartamento.torre}">

        <fieldset>

            <legend>Datos del apartamento</legend>

            <label for="apartamento">Apartamento</label>
            <input name="apartamento" id="apartamento" value="${apartamento.apartamento}"
                   type="number" placeholder="Digite numero apartamento" required autofocus/> <br/>

            <label for="torre">Torre</label>
            <input name="torre" id="torre" value="${apartamento.torre}" type="text" placeholder="Digite numero torre"
                   required/> <br/>

            <label for="Estadocartera">Estado cartera</label>
            <input list="estadocartera" name="cartera" value="${apartamento.estadoCartera}">

            <datalist id="estadocartera">
                <option value="Al dia">
                <option value="En mora">
            </datalist>

        </fieldset>
        <br/> <input type="submit" value="Guardar"/>

    </form>
</section>

</body>
</html>
