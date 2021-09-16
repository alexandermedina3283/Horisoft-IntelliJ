<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Actualización Mascotas</h4>
            <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                <li class="breadcrumb-item">
                    <a href="<%=request.getContextPath()%>/index.jsp">
                        <i class="icofont icofont-home"></i>
                    </a>
                </li>
                <li class="breadcrumb-item"><a href="#">Mi Conjunto</a>
                </li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/MascotaServlet?opcion=listarMascota">Mascotas</a>
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
                <p>Formulario actualización información</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                        <form action="<%=request.getContextPath()%>/MascotaServlet" method="post">
                            <c:set var="mascota" value="${mascota}"></c:set>
                            <input type="hidden" name="opcion" value="editar">
                            <input type="hidden" name="idMascota" value="${mascota.idMascota}">

                                <div class="form-group">
                                    <label for="nombreMascota">Nombre</label>
                                    <input class="form-control" name="nombreMascota" id="nombreMascota" value="${mascota.nombre}" type="text" placeholder="Digite nombre mascota" autofocus pattern="[A-Za-z]{2,40}" required/>
                                </div>

                                <div class="form-group">
                                    <label for="claseMascota">Clase</label>
                                    <input class="form-control" name="claseMascota" id="claseMascota" value="${mascota.clase}" type="text" placeholder="ej. Perro/Gato" pattern="[A-Za-z]{2,40}" required/>
                                </div>

                                <div class="form-group">
                                    <label for="numApartamento">Apartamento</label>
                                    <input class="form-control" name="numApartamento" id="numApartamento" value="${mascota.apartamento}" type="number" placeholder="número apartamento" required pattern="[0-9]{3,5}"/>
                                </div>

                                <div class="form-group">
                                    <label for="numTorre">Torre</label>
                                    <input class="form-control" name="numTorre" id="numTorre" value="${mascota.torre}" type="text" placeholder="número torre" required pattern="[A-Z0-9]{1}"/> <br/>
                                </div>

                            <button type="submit" type="button" class="btn btn-warning waves-effect waves-light" data-toggle="tooltip" data-placement="top" title="" style="float: right"><i class="ti-save" style="color: white;" > </i> Guardar
                            </button>

                        </form>

                        <!--finaliza formulario-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic form ends -->


<jsp:include page="/templates/PlantillaAdmin/plantillaInferior.jsp"/>