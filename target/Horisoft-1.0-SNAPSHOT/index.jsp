
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Row Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Mis zonas sociales</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/index.jsp"><i class="icofont icofont-home"></i></a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/index.jsp"> Inicio</a>
            </ol>
        </div>
    </div>
</div>
<!-- Row end -->

<!-- Tables start -->
<!-- Row start -->

<div class="card-block">
    <div class="row">
        <div class="col-sm-12 table-responsive">
            <!--inicia formulario-->


            <section class="panels-wells">

                <div class="card">
                    <div class="card-header">
                        <h5 class="card-header-text">Recomendaciones para el uso responsable de Zonas Sociales</h5>
                        <p>Para mantener las condiciones seguras, no permita el ingreso de personas con síntomas asociados al COVID-19 en las zonas sociales del Conjunto.
                            Verifique que los procesos de limpieza y desinfección se realicen frecuentemente en las áreas de exposición durante las jornadas
                            de servicio a residentes y permanezca atento al cumplimiento de aforo y tiempo máximo permitido de uso.</p>
                    </div>
                    <div class="card-block">
                        <div class="row">
                            <div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading bg-default txt-white">
                                        Piscina
                                    </div>
                                    <div class="panel-body">
                                        <p>Uso obligatorio de vestido de baño y gorro, los niños deben ingresar acompañados de un adulto responsable.</p><br>
                                        <a href="assets/images/light-box/l3.jpg" data-toggle="lightbox" data-title="A random title" data-footer="A custom footer text">
                                            <img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/piscina-04.jpg" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="panel-footer">
                                        Aforo máximo 15 personas
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading bg-default txt-white">
                                        Juegos de mesa
                                    </div>
                                    <div class="panel-body">
                                        <p>Los elementos deben revisados antes y después del uso, los niños deben ingresar con un adulto responsable.</p><br>
                                        <a href="assets/images/light-box/l3.jpg" data-toggle="lightbox" data-title="A random title" data-footer="A custom footer text">
                                            <img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/salonJuegos-03.jpg" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="panel-footer">
                                        Aforo máximo 10 personas
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading bg-default txt-white">
                                        Futbolin
                                    </div>
                                    <div class="panel-body">
                                        <p>La mesa debe ser revisada antes y después de su uso, los niños deben ingresar con un adulto responsable.</p><br>
                                        <a href="assets/images/light-box/l3.jpg" data-toggle="lightbox" data-title="A random title" data-footer="A custom footer text">
                                            <img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/salonJuegos-04.jpg" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="panel-footer">
                                        Aforo máximo 4 personas
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading bg-default txt-white">
                                        Gimnasio
                                    </div>
                                    <div class="panel-body">
                                        <p>Uso obligatorio de kit tapabocas, toalla y alcohol, deben limpiar y desinfectar las maquinas antes y después de su uso.</p><br>
                                        <a href="assets/images/light-box/l3.jpg" data-toggle="lightbox" data-title="A random title" data-footer="A custom footer text">
                                            <img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/gym_Mesa%20de%20trabajo%201.jpg" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="panel-footer">
                                        Aforo máximo 15 personas
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading bg-default txt-white">
                                        Salón de eventos
                                    </div>
                                    <div class="panel-body">
                                        <p>El salón se debe recibir y entregar bajo inventario, en óptimas condiciones de limpieza, los daños deben ser informados.</p><br>
                                        <a href="assets/images/light-box/l3.jpg" data-toggle="lightbox" data-title="A random title" data-footer="A custom footer text">
                                            <img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/salonEventos_Mesa%20de%20trabajo%201.jpg" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="panel-footer">
                                        Aforo máximo 30 personas
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading bg-default txt-white">
                                        Sauna
                                    </div>
                                    <div class="panel-body">
                                        <p>Uso exclusivo de adultos, tiempo máximo 20 minutos y se debe realizar desinfección antes del próximo uso.</p><br>
                                        <a href="assets/images/light-box/l3.jpg" data-toggle="lightbox" data-title="A random title" data-footer="A custom footer text">
                                            <img src="<%=request.getContextPath()%>/templates/PlantillaAdmin/assets/images/piscina-02.jpg" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="panel-footer">
                                        Aforo máximo 5 personas
                                    </div>
                                </div>
                            </div>

                            <!-- end of row -->
                        </div>
                    </div>
            </section>

        </div>
    </div>
</div>
<jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>