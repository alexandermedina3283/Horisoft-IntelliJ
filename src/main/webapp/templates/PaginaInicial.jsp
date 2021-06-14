<jsp:include page="/templates/superiorAccesoDenegado.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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



<div>
    <p class="fw-bold fs-4 p-2 mb-1 text-center" >Mis zonas sociales</p>
</div>

<!--Card Servicios-->
<div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
        <div class="card">
            <img src="<%=request.getContextPath()%>/_img/Gym.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Gimnasio</h5>
                <p class="card-text">Área de entrenamiento con máquinas de ejercicio multifuncional con aforo máximo permitido de 15 residentes por 1 hora c/u.  </p>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card">
            <img src="<%=request.getContextPath()%>/_img/Piscina.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Piscina</h5>
                <p class="card-text">Espacio con aforo permitido máximo de 15 residentes, para disfrute de agua climatizada, sauna o Jacuzzi por 1 hora c/u.</p>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="card">
            <img src="<%=request.getContextPath()%>/_img/salonJuegos.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Salon de Juegos</h5>
                <p class="card-text">Zona de esparcimiento familiar para residentes con variedad de juegos, con aforo máximo permitido de 10 residentes por 1 hora c/u.</p>
            </div>
        </div>
    </div>
</div>



<jsp:include page="/templates/parteInferior.jsp"/>