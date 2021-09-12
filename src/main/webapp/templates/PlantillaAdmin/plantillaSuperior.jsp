<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 2/09/2021
  Time: 5:08 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="co.com.horisoft.modelo.beans.Usuario"%>

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

<!--Empieza plantilla parte superior-->


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Horisoft</title>
    <!-- HTML5 Shim and Respond.js IE9 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <!-- Favicon icon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/faviconHorisoft-02.png" type="image/x-icon">
    <link rel="icon" href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/horisoft.ico" type="image/x-icon">

    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet">

    <!-- themify -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/icon/themify-icons/themify-icons.css">

    <!-- iconfont -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/icon/icofont/css/icofont.css">

    <!-- simple line icon -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/icon/simple-line-icons/css/simple-line-icons.css">

    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/bootstrap/css/bootstrap.min.css">

    <!-- Chartlist chart css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/plugins/chartist/dist/chartist.css" type="text/css" media="all">

    <!-- Weather css -->
    <link href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/css/svg-weather.css" rel="stylesheet">


    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/css/main.css">

    <!-- Responsive.css-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/css/responsive.css">

</head>

<body class="sidebar-mini fixed">
<div class="loader-bg">
    <div class="loader-bar">
    </div>
</div>
<div class="wrapper">
    <!-- Navbar-->
    <header class="main-header-top hidden-print">
        <a href="<%=request.getContextPath()%>/templates/landingPage/paginaAterrizaje.jsp" class="logo"><img class="img-fluid able-logo" src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/LogoHorisoftBlack2-04.png" alt="Theme-logo"></a>
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#!" data-toggle="offcanvas" class="sidebar-toggle"></a>
            <ul class="top-nav lft-nav">
                <li>
                    <a href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle drop icon-circle drop-image">
                        <i class="ti-agenda" style="color: gray;" > </i><span style="color: gray;"> Manual usuario</span> <!--Color y letra manual usuario-->
                    </a>
                </li>
            </ul>

            <!-- Navbar Right Menu-->
            <div class="navbar-custom-menu f-right">
                <ul class="top-nav">
                    <!-- window screen -->
                    <li class="pc-rheader-submenu">
                        <a href="#!" class="drop icon-circle" onclick="javascript:toggleFullScreen()">
                            <i class="icon-size-fullscreen" style="color: gray;"></i>
                        </a>
                    </li>
                    <!-- User Menu-->
                    <li class="dropdown">
                        <a href="#!" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle drop icon-circle drop-image">
                            <span><img class="img-circle " src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/UserSilueta-05.jpg" style="width:40px;" alt="User Image"></span>
                            <span style="color: gray;"><%=nombre%><i class=" icofont icofont-simple-down"></i></span>
                        </a>
                        <ul class="dropdown-menu settings-menu">
                            <form action="<%=request.getContextPath()%>/SesionesServlet" method="post">
                                <button type="submit" style="background: white; border: white; padding: 8px; font-size: small;"><span style="color: gray;"><i class="icon-logout"></i> Cerrar sesión</span></button>
                            </form>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Side-Nav-->
    <aside class="main-sidebar hidden-print ">
        <section class="sidebar" id="sidebar-scroll">
            <!-- Sidebar Menu-->
            <ul class="sidebar-menu">
                <!--<li class="nav-level">--- Menú</li>-->
                <li class="active treeview">
                    <a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icon-home"></i><span> Inicio</span>
                    </a>
                </li>
                <li class="nav-level">--- Control de acceso</li>
                <li class="treeview">
                    <a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/UsuarioServlet?opcion=listarUsuario">
                        <i class="icon-user"></i><span> Usuarios</span>
                    </a>
                </li>
                <li class="nav-level">--- Información general</li>
                <li class="treeview"><a class="waves-effect waves-dark" href="#!"><i class="icon-pencil"></i><span>Mi Conjunto</span><i class="icon-arrow-down"></i></a>
                    <ul class="treeview-menu">
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/ApartmentServlet?opcion=listarApartamento"><i class="icon-arrow-right"></i> Apartamentos</a></li>
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/ResidenteServlet?opcion=listarResidente"><i class="icon-arrow-right"></i> Residentes</a></li>
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/MascotaServlet?opcion=listarMascota"><i class="icon-arrow-right"></i> Mascotas</a></li>
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/ParqueaderoServlet?opcion=listarParqueadero"><i class="icon-arrow-right"></i> Parqueaderos</a></li>
                    </ul>
                </li>
                <li class="nav-level">--- Gestión zonas sociales</li>
                <li class="treeview"><a class="waves-effect waves-dark" href="#!"><i class="icon-event"></i><span>Zonas sociales</span><i class="icon-arrow-down"></i></a>
                    <ul class="treeview-menu">
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/InscripcionServlet?opcion=listarInscripcion"><i class="icon-arrow-right"></i> Inscripciones</a></li>
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/InvitadoServlet?opcion=listarInvitado"><i class="icon-arrow-right"></i> Invitados</a></li>
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/ComentarioServlet?opcion=listarComentario"><i class="icon-arrow-right"></i> Comentarios</a></li>
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/SalonSocialServlet?opcion=listarReservaSalon"><i class="icon-arrow-right"></i> Reserva salón social</a></li>
                    </ul>
                </li>
                <li class="nav-level">--- Servicios y zonas activas</li>
                <li class="treeview"><a class="waves-effect waves-dark" href="#!"><i class="icon-info"></i><span>Servicios y Zonas</span><i class="icon-arrow-down"></i></a>
                    <ul class="treeview-menu">
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/ServiciosZonaServlet?opcion=listarServicios"><i class="icon-arrow-right"></i> Servicios</a></li>
                        <li><a class="waves-effect waves-dark" href="<%=request.getContextPath()%>/ZonaSocialServlet?opcion=listarZonas"><i class="icon-arrow-right"></i> Zonas</a></li>
                    </ul>
                </li>
            </ul>
        </section>
    </aside>
    <div class="content-wrapper">
        <!-- Container-fluid starts -->
        <!-- Main content starts -->
        <div class="container-fluid">
            <!--Finaliza parte superior-->
