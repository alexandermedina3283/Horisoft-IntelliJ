<%--
  Created by IntelliJ IDEA.
  User: RYZEN5
  Date: 20/08/2021
  Time: 9:08 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/_fonts/icomoon/style.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/_css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/_css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/_css/style.css">

    <link rel="icon" href="<%=request.getContextPath()%>/_img/horisoft.ico" type="image/x-icon">

    <title>Inicio Horisoft</title>
</head>
<body>


<div class="half">
    <div class="bg order-1 order-md-2" style="background-image: url('<%=request.getContextPath()%>/_img/grupoApartamentos.jpg');"></div>
    <div class="contents order-2 order-md-1">

        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-6">
                    <div class="form-block">
                        <div class="text-center mb-10">
                            <img src="<%=request.getContextPath()%>/_img/logoHorisoft140X120-03.png" alt="">
                            <!--<h3>Bienvenido a <strong>Ingresar</strong></h3>-->
                            <!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
                        </div>
                        <form action="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet" method="post">
                            <input type="hidden" name="opcion" value="validarInicio">

                            <div class="form-group first">
                                <label for="nombreUsuario">Usuario</label>
                                <input type="text" class="form-control" placeholder="Ingrese su usuario" id="nombreUsuario" name="nombreUsuario" autofocus required pattern=[a-zA-Z0-9]{2,40}>
                            </div>
                            <div class="form-group last mb-3">
                                <label for="contraUsuario">Contraseña</label>
                                <input type="password" class="form-control" placeholder="Ingrese su contraseña" id="contraUsuario" name="contraUsuario" required>
                            </div>

                            <%
                                if(request.getAttribute("mensaje")!=null){
                            %>
                            <div class="alert alert-danger" role="alert">
                                <strong>¡Usuario o contraseña incorrectos! </strong> ${mensaje}
                            </div>
                            <%}
                            %>

                            <div class="d-sm-flex mb-5 align-items-center">
                                <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Recordarme</span>
                                    <input type="checkbox" checked="checked"/>
                                    <div class="control__indicator"></div>
                                </label>
                                <span class="ml-auto"><a href="<%=request.getContextPath()%>/vistas/usuario/accesoDenegado.jsp" class="forgot-pass">¿Olvidó su contraseña?</a></span>
                            </div>

                            <input type="submit" value="Iniciar sesión" class="btn btn-block btn-primary">

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>



<script src="<%=request.getContextPath()%>/_js/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/_js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/_js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/_js/main.js"></script>
</body>
</html>