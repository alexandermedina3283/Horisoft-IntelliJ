<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/PlantillaAdmin/plantillaSuperior.jsp"/>

<!-- Header Starts -->
<div class="row">
  <div class="col-sm-12 p-0">
    <div class="main-header">
      <h4>Comentarios</h4>
      <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
        <li class="breadcrumb-item">
          <a href="<%=request.getContextPath()%>/index.jsp">
            <i class="icofont icofont-home"></i>
          </a>
        </li>
        <li class="breadcrumb-item"><a href="#">Zonas sociales</a>
        </li>
        <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/ComentarioServlet?opcion=listarComentario">Comentarios</a>
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

            <form action="<%=request.getContextPath()%>/ComentarioServlet" method="post">
              <input type="hidden" name="opcion" value="guardar">

                <div class="form-group">
                  <label for="descripcionComentario">Descripción</label>
                  <input class="form-control" name="descripcionComentario" id="descripcionComentario" type="text"
                         placeholder="Ingrese comentario, sugerencia o recomendación" required autofocus/>
                </div>


                <div class="form-group">
                  <label for="autorComentario">Nombre</label>
                  <input class="form-control" name="autorComentario" id="autorComentario" type="text"
                         placeholder="Nombre de quien realiza el comentario" required pattern="[A-Za-z A-Za-z]{2,40}"/>
                </div>

                <div class="form-group">
                  <label for="idInscripcion">Número inscripción</label>
                  <input class="form-control" name="idInscripcion" id="idInscripcion" type="text"
                         placeholder="número de inscripcion" required pattern="[0-9]{1,4}"/><br>
                </div>

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