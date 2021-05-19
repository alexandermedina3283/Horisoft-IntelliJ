<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 18/05/2021
  Time: 8:12 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/_css/estilologin.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet">
    <title>Document</title>
</head>
<body>
<form action="http://localhost:8080/Horisoft_war_exploded/UsuarioController" method="post">
    <input type="hidden" name="opcion" value="validar">

<div class="body"></div>
<div class="grad"></div>
<div class="header">
    <div><span>Horisoft</span></div>
</div>
<br>
<div class="login">
    <input type="text" placeholder="Nombre usuario" name="nombreUsuario"><br>
    <input type="password" placeholder="Ingrese su contraseña" name="contraUsuario"><br>
    <input type="submit" value="Iniciar sesión">
</div>

</body>
</html>
