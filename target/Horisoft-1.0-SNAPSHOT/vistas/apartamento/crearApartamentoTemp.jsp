<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Apartamentos</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="#">Mi Conjunto</a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/ApartmentServlet?opcion=listarApartamento">Apartamentos</a>
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
                <p>Formulario registro</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                        <form
                                action="ApartmentServlet" method="post">

                            <input type="hidden" name="opcion" value="guardar">

                                <div class="form-group">
                                    <label for="apartamento">Apartamento</label>
                                    <input class="form-control" name="apartamento" id="apartamento" type="text" placeholder="Ingrese número del apartamento" required
                                           autofocus pattern="[0-9]{3,5}"/>
                                </div>

                                <div class="form-group">
                                    <label for="torre">Torre</label>
                                    <input class="form-control" name="torre" id="torre" type="text" placeholder="Ingrese número de torre" required pattern="[A-Z0-9]{1}"/>
                                </div>

                                <div class="form-group">
                                    <label for="Estadocartera">Estado cartera</label>
                                    <input class="form-control" list="estadocartera" name="cartera" required placeholder="Seleccione una opción ">

                                    <datalist id="estadocartera">
                                        <option value="Al dia">
                                        <option value="En mora">
                                    </datalist>
                                </div> <br>

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