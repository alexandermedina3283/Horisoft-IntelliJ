<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
    <div class="col-sm-12 p-0">
        <div class="main-header">
            <h4>Actualización datos Apartamento</h4>
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
                <p>Formulario actualizacion información</p>
            </div>
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-12 table-responsive">
                        <!--inicia formulario-->

                        <form action="<%=request.getContextPath()%>/ApartmentServlet" method="post">
                            <c:set var="apartamento" value="${apartamento}"></c:set>
                            <input type="hidden" name="opcion" value="editar">
                            <input type="hidden" name="apartamento" value="${apartamento.apartamento}">
                            <input type="hidden" name="torre" value="${apartamento.torre}">

                                <div class="form-group">
                                    <label for="apartamento">Apartamento</label>
                                    <input class="form-control" name="apartamento" id="apartamento" value="${apartamento.apartamento}"
                                           type="number" placeholder="número apartamento" required autofocus pattern="[0-9]{3,5}"/> <br/>
                                </div>

                                <div class="form-group">
                                    <label for="torre">Torre</label>
                                    <input class="form-control" name="torre" id="torre" value="${apartamento.torre}" type="text" placeholder="número torre"
                                           required pattern="[A-Z0-9]{1}"/> <br/>
                                </div>

                                <div class="form-group">
                                    <label for="Estadocartera">Estado cartera</label>
                                    <input class="form-control" list="estadocartera" name="cartera" required placeholder="seleccione una opción" value="${apartamento.estadoCartera}">

                                    <datalist id="estadocartera">
                                        <option value="Al dia">
                                        <option value="En mora">
                                    </datalist>
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