<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 25/08/2021
  Time: 4:15 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/miestilo.css">

    <title>Horisoft</title>
    <!--

    Lava Landing Page

    https://templatemo.com/tm-540-lava-landing-page

    -->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-lava.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">

    <link rel="icon" href="<%=request.getContextPath()%>/_img/horisoft.ico" type="image/x-icon">

</head>

<body>

<!-- ***** Preloader Start ***** -->
<div id="preloader">
    <div class="jumper">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<!-- ***** Preloader End ***** -->


<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <!-- <a href="index.html" class="logo">
                        Horisoft
                    </a> -->
                    <img class="logo" src="assets/images/logoHorizontal.png" alt="">
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">

                        <li class="scroll-to-section"><a href="#welcome" class="menu-item">Inicio</a></li>
                        <li class="scroll-to-section"><a href="#about" class="menu-item">Caracter??sticas</a></li>
                        <li class="scroll-to-section"><a href="#promotion" class="menu-item">Ventajas</a>
                        <li class="scroll-to-section"><a href="#testimonials" class="menu-item">Testimonios</a>
                        </li>
                        <!-- <li class="submenu">
                            <a href="javascript:;">Drop Down</a>
                            <ul>
                                <li><a href="" class="menu-item">About Us</a></li>
                                <li><a href="" class="menu-item">Features</a></li>
                                <li><a href="" class="menu-item">FAQ's</a></li>
                                <li><a href="" class="menu-item">Blog</a></li>
                            </ul>
                        </li> -->
                        <li class="scroll-to-section"><a href="#contact-us" class="menu-item">Cont??ctenos</a></li>
                        <!--<li class="scroll-to-section"><a href="" class="menu-item text-warning">Iniciar sesi??n</a></li>-->
                        <li><a class="scroll-to-section" href="<%=request.getContextPath()%>/vistas/usuario/loginUsuario.jsp"><strong style="color: orangered;">Iniciar sesi??n</strong></a></li>
                        <!--<button type="button" class="btn btn-warning">Iniciar sesi??n</button>-->

                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->


<!-- ***** Welcome Area Start ***** -->
<div class="welcome-area" id="welcome">

    <!-- ***** Header Text Start ***** -->
    <div class="header-text">
        <div class="container">
            <div class="row">
                <div class="left-text col-lg-6 col-md-12 col-sm-12 col-xs-12"
                     data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                    <h1>Gestione informaci??n de residentes y <em>ZONAS SOCIALES</em></h1>
                    <p>Potencialice el manejo de la informaci??n de su Conjunto o Edificio con Horisoft, un sistema de informaci??n intuitivo, sencillo y confiable.</p>
                    <a href="#about" class="main-button-slider">??COMO FUNCIONA?</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Header Text End ***** -->
</div>
<!-- ***** Welcome Area End ***** -->

<!-- ***** Features Big Item Start ***** -->
<section class="section" id="about">
    <div class="container">
        <h4 class="text-center text-warning">CARACTER??STICAS</h4><br>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12"
                 data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                <div class="features-item">
                    <div class="features-icon">
                        <h2>01</h2>
                        <img src="assets/images/caracteristicas-02.png" alt="">
                        <h4>Registro multiprop??sito</h4>
                        <p>Mantenga el Censo de residentes actualizado y consulte f??cilmente los datos de mascotas, parqueaderos, veh??culos e inmuebles. </p>
                        <a href="#contact-us" class="main-button">
                            LEER UN POCO M??S
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12"
                 data-scroll-reveal="enter bottom move 30px over 0.6s after 0.4s">
                <div class="features-item">
                    <div class="features-icon">
                        <h2>02</h2>
                        <img src="assets/images/caracteristicas-03.png" alt="">
                        <h4>Optimice el servicio</h4>
                        <p>Promueva el uso de las zonas sociales de su Conjunto o Edificio, con un servicio de registro moderno, ??gil y sencillo.  </p>
                        <a href="#contact-us" class="main-button">
                            AMPLIAR INFORMACI??N
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12"
                 data-scroll-reveal="enter right move 30px over 0.6s after 0.4s">
                <div class="features-item">
                    <div class="features-icon">
                        <h2>03</h2>
                        <img src="assets/images/caracteristicas-01.png" alt="">
                        <h4>Control y monitoreo de aforo</h4>
                        <p>Lleve un registro exacto de ingreso y salida de usuarios para su sal??n de juegos, piscina o gimnasio.</p>
                        <a href="#contact-us" class="main-button">
                            CONOCER DETALLES
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Features Big Item End ***** -->

<div class="left-image-decor"></div>

<!-- ***** Features Big Item Start ***** -->
<section class="section" id="promotion">
    <div class="container">
        <h4 class="text-center text-warning">VENTAJAS</h4><br>
        <div class="row">
            <div class="left-image col-lg-5 col-md-12 col-sm-12 mobile-bottom-fix-big"
                 data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                <img src="assets/images/CirculoVentajas-04.png" class="rounded img-fluid d-block mx-auto" alt="App">
            </div>
            <div class="right-text offset-lg-1 col-lg-6 col-md-12 col-sm-12 mobile-bottom-fix">
                <ul>
                    <li data-scroll-reveal="enter right move 30px over 0.6s after 0.4s">
                        <img src="assets/images/ventajasIcon-01-03.png" alt="">
                        <div class="text">
                            <h4>F??cil operaci??n</h4>
                            <p>Su interfaz sencilla e intuitiva facilita el aprendizaje en corto tiempo para Administradores y Gestionadores de zonas. </p>
                        </div>
                    </li>
                    <li data-scroll-reveal="enter right move 30px over 0.6s after 0.5s">
                        <img src="assets/images/ventajasIcon-01-02.png" alt="">
                        <div class="text">
                            <h4>Personalizaci??n a la medida </h4>
                            <p>Personalizaci??n de acuerdo a las zonas sociales y actividades recreodeportivas que desarrollen los residentes en la Agrupaci??n residencial.</p>
                        </div>
                    </li>
                    <li data-scroll-reveal="enter right move 30px over 0.6s after 0.6s">
                        <img src="assets/images/ventajasIcon-01-05.png" alt="">
                        <div class="text">
                            <h4>Adi??s a las planillas</h4>
                            <p>Contribuya al bienestar del medio ambiente y reducci??n de gastos en papeler??a con informaci??n digitalizada.</p>
                        </div>
                    </li>
                    <li data-scroll-reveal="enter right move 30px over 0.6s after 0.6s">
                        <img src="assets/images/ventajasIcon-01-04.png" alt="">
                        <div class="text">
                            <h4>Ahorramos tiempo</h4>
                            <p>La automatizaci??n de muchos procesos repetitivos y lentos le permitir?? destinar m??s tiempo a otras tareas de importancia.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!-- ***** Features Big Item End ***** -->

<div class="right-image-decor"></div>

<!-- ***** Testimonials Starts ***** -->
<section class="section" id="testimonials">
    <div class="container">
        <h4 class="text-center text-warning">TESTIMONIOS</h4><br>
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <div class="center-heading">
                    <h2>Que piensan de  <em>Horisoft</em></h2>
                    <p>La satisfacci??n de nuestros clientes y usuarios es nuestra mayor motivaci??n, conozca sus opiniones.</p>
                </div>
            </div>
            <div class="col-lg-10 col-md-12 col-sm-12 mobile-bottom-fix-big"
                 data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                <div class="owl-carousel owl-theme">
                    <div class="item service-item">
                        <div class="author">
                            <i><img src="assets/images/testimonial-author-5-01.png" alt="Author One"></i>
                        </div>
                        <div class="testimonial-content">
                            <ul class="stars">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                            <h4>Wilson Rodriguez</h4>
                            <p>???En el edificio nos encant?? el nuevo sistema para reservar las zonas sociales, ya puedo programar mi entrenamiento sin temor a que est?? lleno el gimnasio.???</p>
                            <span>Coopropietario Granada Castilla Reservado</span>
                        </div>
                    </div>
                    <div class="item service-item">
                        <div class="author">
                            <i><img src="assets/images/testimonial-author-1-02.png" alt="Second Author"></i>
                        </div>
                        <div class="testimonial-content">
                            <ul class="stars">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                            <h4>Diana Romero Pineda</h4>
                            <p>???Es una herramienta genial, facilita el trabajo del Administrador y siempre tenemos informaci??n a la mano sobre nuestros residentes.???</p>
                            <span>Administradora Castell??n del Conde</span>
                        </div>
                    </div>
                    <div class="item service-item">
                        <div class="author">
                            <i><img src="assets/images/testimonial-author-1-03.png" alt="Author Third"></i>
                        </div>
                        <div class="testimonial-content">
                            <ul class="stars">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                            <h4>Azucena Rojas</h4>
                            <p>???Con el nuevo sistema escucharon mis sugerencias, tenemos una comunicaci??n mas fluida con el Administrador y nuestros comentarios son atendidos???</p>
                            <span>Coopropietario Cerezos de Castilla</span>
                        </div>
                    </div>
                    <div class="item service-item">
                        <div class="author">
                            <i><img src="assets/images/testimonial-author-1-04.png" alt="Fourth Author"></i>
                        </div>
                        <div class="testimonial-content">
                            <ul class="stars">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                            <h4>Adelaida Puerta</h4>
                            <p>"La gesti??n de mi Conjunto mejor?? y los residentes se sienten m??s tranquilos con la protecci??n y privacidad de sus datos, la recomiendo."</p>
                            <span>Administradora Alcazar P.H</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Testimonials Ends ***** -->


<!-- ***** Footer Start ***** -->
<footer id="contact-us">
    <div class="container">
        <div class="footer-content">
            <div class="row">
                <!-- ***** Contact Form Start ***** -->
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="contact-form">
                        <h4 class="text-start text-warning">CONT??CTENOS</h4><br>
                        <form id="contact" action="" method="post">
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <fieldset>
                                        <input name="name" type="text" id="name" placeholder="Nombre y apellidos" required=""
                                               style="background-color: rgba(250,250,250,0.3);">
                                    </fieldset>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <fieldset>
                                        <input name="email" type="text" id="email" placeholder="Correo electr??nico"
                                               required="" style="background-color: rgba(250,250,250,0.3);">
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                            <textarea name="message" rows="6" id="message" placeholder="Escriba su pregunta o inquietud"
                                                      required="" style="background-color: rgba(250,250,250,0.3);"></textarea>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="main-button">Enviar mensaje ahora</button>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- ***** Contact Form End ***** -->
                <div class="right-content col-lg-6 col-md-12 col-sm-12">
                    <h2>M??s sobre <em>Horisoft</em></h2>
                    <p>Diligencie el formulario y uno de nuestros ejecutivos se comunicar?? para ampliar la informaci??n sobre nuestro sistema de gesti??n de zonas sociales y administraci??n de informaci??n de residentes Horisoft.
                        <br><br>
                    <p>Ll??menos:</p>
                    <p>+57 (601) 6636839 </p>
                    <p>+57 320 2115906 </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="sub-footer">
                    <p>Copyright &copy; 2021 Horisoft
                        | Todos los derechos reservados.</p>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/scrollreveal.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/imgfix.min.js"></script>

<!-- Global Init -->
<script src="assets/js/custom.js"></script>

</body>
</html>