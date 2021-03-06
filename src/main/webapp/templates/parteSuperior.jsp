<%@ page import="co.com.horisoft.modelo.beans.Usuario"%><%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 20/04/2021
  Time: 4:10 p. m.
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">

<!--Manejo de cache navegador-->
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
    response.setHeader("Expires", String.valueOf(120));
%>

<!--variables de sesión-->
    <%
    HttpSession miSesion = (HttpSession) request.getSession();
    String nombre="";
    String rol="";


    if  (miSesion.getAttribute("datosUsuario") == null){
        request.getRequestDispatcher("/Login.jsp").forward(request,response);

    }else {
        Usuario usuario = (Usuario) miSesion.getAttribute("datosUsuario");
        nombre = usuario.getNombreUsuario();
        rol=usuario.getRolUsuario();
    }
%>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>Horisoft</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/_css/estiloHorisoftemplate.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<%--    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">--%>
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,100;1,300;1,400&display=swap" rel="stylesheet">
    <!--datatable-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/datatableprueba/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/datatableprueba/css/jquery.dataTables.min.css">
    <link rel="icon" href="<%=request.getContextPath()%>/_img/horisoft.ico" type="image/x-icon">
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
                        <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/index.jsp"><i class="fas fa-home"></i>Inicio</a>
                    </li>

                    <%
                        if(rol.equals("Administrador Conjunto")){
                    %>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Usuario
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/UsuarioServlet?opcion=crearUsuario">Crear</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/UsuarioServlet?opcion=listarUsuario">Listar</a></li>
                        </ul>
                    </li>
                    <!--Restricciones para el Gestionador-->
                    <%}else{ %>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Usuario
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/SesionesServlet?opcion=accesoNegado">Crear</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/SesionesServlet?opcion=accesoNegado">Listar</a></li>
                        </ul>
                    </li>

                    <% } %>


                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Mi Conjunto
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/ApartmentServlet?opcion=listarApartamento">Apartamentos</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/ResidenteServlet?opcion=listarResidente">Residentes</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/MascotaServlet?opcion=listarMascota">Mascotas</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/ParqueaderoServlet?opcion=listarParqueadero">Parqueaderos</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Zonas sociales
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/InscripcionServlet?opcion=listarInscripcion">Inscripciones</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/InvitadoServlet?opcion=listarInvitado">Invitados</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/ComentarioServlet?opcion=listarComentario">Comentarios</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/SalonSocialServlet?opcion=listarReservaSalon">Reserva salon social</a></li>
                        </ul>
                    </li>

                    <%
                        if(rol.equals("Administrador Conjunto")){
                    %>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Servicios y Zonas
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/ServiciosZonaServlet?opcion=listarServicios">Servicios</a></li>
                            <!--<li><a class="dropdown-item" href="<%=request.getContextPath()%>/CategoriaResidenteServlet?opcion=listarCategoriaResidente">Clasificación residentes</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/ClaseVehiculoServlet?opcion=listarClaseVehiculo">Clasificación vehículos</a></li>
                            SE INHABILITA LA OPCION DE VISUALIZACIÓN EN MENU-->
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/ZonaSocialServlet?opcion=listarZonas">Zonas</a></li>

                        </ul>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" aria-current="page" href="#"><i class="fas fa-sign-out-alt"></i>Salir</a>--%>
<%--                    </li>--%>
                    <%}else{ %>

                    <!--Restricciones para el Gestionador-->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Servicios y Zonas
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/SesionesServlet?opcion=accesoNegado">Servicios</a></li>
                            <!--<li><a class="dropdown-item" href="<%=request.getContextPath()%>/SesionesServlet?opcion=accesoNegado">Clasificación residentes</a></li>
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/SesionesServlet?opcion=accesoNegado">Clasificación vehículos</a></li>-->
                            <li><a class="dropdown-item" href="<%=request.getContextPath()%>/SesionesServlet?opcion=accesoNegado">Zonas</a></li>

                        </ul>
                    </li>
                    <% } %>

                </ul>
            </div>
        </div>
        <div>
            <form action="<%=request.getContextPath()%>/SesionesServlet" method="post">
                <button type="submit" class="btn btn-link mx-3 "><i class="fas fa-sign-out-alt" style="color: black; font-size: large">Salir</i></button>
            </form>
        </div>
        <!--variable de sesión-->
        <p class="text-center mx-3">Hola <%=nombre%></p>
    </nav>

</header>

<main class="estilomain">
    <!--empieza main-->