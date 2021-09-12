<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Salón social</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="#">Zonas sociales</a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/SalonSocialServlet?opcion=listarReservaSalon">Reserva salón social</a>
                </li>
            </ol>
        </div>
    </div>
</div>
<!-- Header end -->


<!-- Row start -->
<div class="row">
    <div class="col-sm-12">
        <!-- Basic form starts -->
        <div class="card">
            <div class="card-header">
                <h5 class="card-header-text">Datos generales</h5>
                <p>Formulario registro reservas</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                        <form action="<%=request.getContextPath()%>/SalonSocialServlet" method="post">
                            <input type="hidden" name="opcion" value="guardar">

                                <div class="form-group">
                                    <label for="fechaPagoReserva">Fecha pago reserva</label>
                                    <input class="form-control"
                                           name="fechaPagoReserva" id="fechaPagoReserva" type="date"
                                           placeholder="fecha pago reserva" required autofocus/>
                                </div>

                                <div class="form-group">
                                    <label for="numComprobante">Número comprobante pago</label>
                                    <input class="form-control"
                                           name="numComprobante" id="numComprobante" type="text"
                                           placeholder="Número comprobante" required />
                                </div>

                                <div class="form-group">
                                    <label for="valorDeposito">Valor deposito</label>
                                    <input class="form-control"
                                           name="valorDeposito" id="valorDeposito" type="text"
                                           placeholder="valor pagado" required pattern="[0-9]{2,6}"/>
                                </div>

                                <div class="form-group">
                                    <label for="idInscripcionReserva">Numero inscripción</label>
                                    <input class="form-control" name="idInscripcionReserva" id="idInscripcionReserva" type="text"
                                           placeholder="número de inscripción" required pattern="[0-9]{1,4}"/>
                                </div><br>


                            <button type="submit" type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" style="float: right">Enviar formulario
                            </button>

                        </form>

                        <!--finaliza formulario-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic form ends -->


<jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>