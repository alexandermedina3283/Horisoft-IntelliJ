<%@ page import="co.com.horisoft.modelo.dao.CategoriaResidenteDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/templates/parteSuperior.jsp"/>



    <form action="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet" method="post">
        <c:set var="residente" value="${residente}"></c:set>
        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="idResidente" value="${residente.idResidente}">
        <fieldset>

            <legend>Actualizar datos del residente</legend>

            <div class="form-group">
            <label for="nombreResidente">Nombre</label> <input class="form-control"
                name="nombreResidente" id="nombreResidente" value="${residente.nombre}" type="text"
                placeholder="ej. Juan " autofocus required pattern="[A-Za-z A-Za-z]{2,40}" /> <br />
            </div>

            <div class="form-group">
            <label for="apellidoResidente">Apellido</label> <input class="form-control"
                name="apellidoResidente" id="apellidoResidente" value="${residente.apellido}" type="text"
                placeholder="ej. Rodriguez" required pattern="[A-Za-z A-Za-z]{2,40}"/> <br />
            </div>

            <div class="form-group">
            <label for="identificacionResidente">Identificación</label> <input class="form-control"
                name="identificacionResidente" id="identificacionResidente" value="${residente.identificacion}"type="text"
                placeholder="ej. CC########" required pattern="[A-Z0-9]{2,20}"/> <br />
            </div>

            <div class="form-group">
            <label for="fechaNacimiento">Fecha nacimiento</label> <input class="form-control"
                name="fechaNacimiento" id="fechaNacimiento" value="${residente.fechaNacimiento}" type="date"
                placeholder="fecha de nacimiento" required/> <br />
            </div>

            <div class="form-group">
            <label for="telefonoResidente">Telefono</label> <input class="form-control"
                name="telefonoResidente" id="telefonoResidente" value="${residente.telefono}" type="text"
                placeholder="ej. 32054212##" pattern="[0-9]{7,20}"/> <br />
            </div>

            <div class="form-group">
            <label for="emailResidente">Correo electronico</label> <input class="form-control"
                name="emailResidente" id="emailResidente" value="${residente.email}" type="text"
                placeholder="ej.nombre&#64micorreo.com" /> <br />
            </div>

            <div class="form-group">
            <label for="estadoResidente">Estado residente</label>
            <input class="form-control" list="estado" name="estadoResidente" id="estadoResidente" value="${residente.estado}"
                   placeholder="Seleccione estado" required >
            <datalist id= "estado">
                <option value = "Activo"></option>
                <option value = "Inactivo"></option>
            </datalist>
            </div><br>

            <div class="form-group">
            <label for="numApartamento">Apartamento</label> <input class="form-control"
                name="numApartamento" id="numApartamento" value="${residente.apartamento}" type="text"
                placeholder="Número apartamento" pattern="[0-9]{3,5}" required/> <br />
            </div>

            <div class="form-group">
            <label for="numTorre">Torre</label> <input class="form-control"
                name="numTorre" id="numTorre" value="${residente.torre}" type="text"
                placeholder="Número torre" required pattern="[A-Z0-9]{1}" /> <br />
            </div>

            <div class="form-group">
            <label for="categoriaResidente">Categoria residente</label> <input class="form-control"
                name="categoriaResidente" id="categoriaResidente" value="${categoriaRes.obtenerCategorias(residente.categoria).getNombreCategoria()}" type="text"
                placeholder="Categoria residente" required/> <br />
            </div>

        </fieldset>
        <br /> <button type="submit" class="btn btn-secondary">Guardar</button>

    </form>

<jsp:include page="/templates/parteInferior.jsp"/>
