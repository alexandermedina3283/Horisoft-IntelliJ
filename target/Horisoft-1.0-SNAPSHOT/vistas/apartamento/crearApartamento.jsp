<!--

<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 19/04/2021
  Time: 4:26 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
-->

<jsp:include page="/templates/parteSuperior.jsp"/>


<section>
    <h1>Formulario de registro residentes</h1>
    <h3>Sección uno</h3>
    <form
            action="http://localhost:8080/Horisoft_war_exploded/ApartamentoController"
            method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Datos del apartamento</legend>
            <label for="apartamento">Apartamento</label>
            <input name="apartamento" id="apartamento" type="text" placeholder="Digite numero apartamento" required
                   autofocus/> <br/>

            <label for="torre">Torre</label>
            <input name="torre" id="torre" type="text" placeholder="Digite numero torre" required/> <br/>

            <label for="Estadocartera">Estado cartera</label>
            <input list="estadocartera" name="cartera">

            <datalist id="estadocartera">
                <option value="Al dia">
                <option value="En mora">
            </datalist>


        </fieldset>
        <br/> <input type="submit" value="Guardar"/>

    </form>
</section>
<!--
</body>
</html>-->
<jsp:include page="/templates/parteInferior.jsp"/>