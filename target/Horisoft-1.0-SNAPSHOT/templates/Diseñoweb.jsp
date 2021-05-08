<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 20/04/2021
  Time: 4:10 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>Horisoftemplate</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/_css/estiloHorisoftemplate.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet">
</head>
<body class="estilobody">
<header class="estiloheader">
    <!--inicia mi header-->
    <section class="seccionheader">
        <div class="elementoimgheader">
            <img class="logohorisoft" src="<%=request.getContextPath()%>/_img/Edificios.png">
        </div>
        <div class="elementonavheader">
            <nav class="listanav">
                <a href="http://localhost:8080/Horisoft_war_exploded/index.jsp">Inicio</a>
                <a href="#">Quienes somos</a>
                <a href="http://localhost:8080/Horisoft_war_exploded/vistas/usuario/validarUsuario.jsp">Salir</a>
            </nav>
        </div>
    </section>
    <!--finaliza mi header-->
</header>

<main class="estilomain">
    <!--empieza main-->



    <!--finaliza main-->
</main>

<footer class="estilofooter">
    <!--empieza footer-->
    <div class="contenedorfooter">
        <div class="manual">
            <p class="textofooter">Consultar manual del usuario</p>
            <a class="manual-link" href="#">&nbsp;Click aquí</a>
        </div>
            <p class="textofooter">Linea de soporte tecnico 3202115906</p>
    </div>
    <!--finaliza footer-->
</footer>
<!--link js de bootstrap 4-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>
