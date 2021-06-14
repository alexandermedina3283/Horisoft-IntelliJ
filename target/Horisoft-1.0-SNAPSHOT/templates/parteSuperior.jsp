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
    <title>Horisoft</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/_css/estiloHorisoftemplate.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,100;1,300;1,400&display=swap" rel="stylesheet">
    <!--datatable-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/datatableprueba/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/datatableprueba/css/jquery.dataTables.min.css">
</head>
<body class="estilobody">
<header class="estiloheader">
    <!--inicia mi header-->
    <section class="seccionheader">
        <div class="elementoimgheader">
            <img class="logohorisoft" src="<%=request.getContextPath()%>/_img/Edificio2.png">
        </div>
    </section>
    <!--finaliza mi header-->

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="http://localhost:8080/Horisoft_war_exploded/index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Usuario
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet?opcion=crearUsuario">Crear</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet?opcion=listarUsuario">Listar</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Mi Conjunto
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet?opcion=listarApartamento">Apartamentos</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=listarResidente">Habitantes</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=listarMascota">Mascotas</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoServlet?opcion=listarParqueadero">Parqueaderos</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Zonas sociales
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet?opcion=listarInscripcion">Inscripciones</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/InvitadoServlet?opcion=listarInvitado">Invitados</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet?opcion=listarComentario">Comentarios</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=listarReservaSalon">Reserva salon social</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Servicios y Zonas
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/ServiciosZonaServlet?opcion=listarServicios">Servicios</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/CategoriaResidenteServlet?opcion=listarCategoriaResidente">Clasificación residentes</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/ClaseVehiculoServlet?opcion=listarClaseVehiculo">Clasificación vehículos</a></li>
                            <li><a class="dropdown-item" href="http://localhost:8080/Horisoft_war_exploded/ZonaSocialServlet?opcion=listarZonas">Zonas</a></li>

                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Salir</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

</header>

<main class="estilomain">
    <!--empieza main-->