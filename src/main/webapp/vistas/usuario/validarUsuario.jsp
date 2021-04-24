<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 19/04/2021
  Time: 8:48 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section class="registrouser">
    <div class="contenedor">
        <h2 class="titulo">Bienvenido</h2>
        <h2 class="formulario">Ingrese sus datos para acceder</h2>
        <form action="http://localhost:8080/Horisoft_war_exploded/UsuarioController" method="post">
            <input type="hidden" name="opcion" value="validar">
            <fieldset>
                <legend>Formulario Ingreso</legend>
                <label for="nombreUsuario">Nombre usuario :</label>
                <input type="text" name="nombreUsuario" id="nombreUsuario" placeholder="nombre usuario" autofocus="" > <br>
                <label for="contraUsuario">Contraseña :</label>
                <input type="password" name="contraUsuario" id="contraUsuario" placeholder="ingrese contraseña" > <br>
                <input type="submit" name= "botonIngresar" value="INGRESAR"/>
            </fieldset>
        </form>
    </div>
</section>
</body>
</html>
