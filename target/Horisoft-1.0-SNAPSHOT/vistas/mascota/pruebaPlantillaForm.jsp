<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Mascotas</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="index.html">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="#">Mi Conjunto</a>
                </li>
                <li class="breadcrumb-item"><a href="basic-table.html">Mascotas</a>
                </li>
            </ol>
        </div>
    </div>
</div>
<!-- Header end -->

<!-- Tables start -->
<!-- Row start -->
<div class="row">
    <div class="col-sm-12">
        <!-- Basic form starts -->
        <div class="card">
            <div class="card-header">
                <h5 class="card-header-text">Datos generales</h5>
                <p>Formulario registro animales de compañia</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                                <form action="MascotaServlet" method="post">

                                    <input type="hidden" name="opcion" value="guardar">

                                        <div class="form-group">
                                            <label for="nombreMascota">Nombre</label>
                                            <input class="form-control" name="nombreMascota" id="nombreMascota" type="text" placeholder="Digite nombre mascota" autofocus pattern="[A-ZÑa-zñ]{2,40}" required/>
                                        </div>

                                        <div class="form-group">
                                            <label for="claseMascota">Clase</label>
                                            <input class="form-control" name="claseMascota" id="claseMascota" type="text" placeholder="ej. Perro/Gato" pattern="[A-Za-z]{2,40}" required/>
                                        </div>

                                        <div class="form-group">
                                            <label for="numApartamento">Número apartamento</label>
                                            <input class="form-control" name="numApartamento" id="numApartamento" type="text" placeholder="Ingrese número del apartamento" required pattern="[0-9]{3,5}"/>
                                        </div>

                                        <div class="form-group">
                                            <label for="numTorre">Número torre</label>
                                            <input class="form-control" name="numTorre" id="numTorre" type="text" placeholder="Ingrese número de torre" required pattern="[A-Z0-9]{1}"/>
                                        </div><br>

                                    <button type="submit" type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="">Enviar formulario
                                    </button>



                                </form>



                        <!--finaliza formulario-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic form ends -->


<jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>