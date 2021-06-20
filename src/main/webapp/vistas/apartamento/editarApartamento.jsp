
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<div class="d-flex justify-content-center flex-column align-items-start">

    <div class="bg-light border rounded p-2 m-2 mt-3 w-50">

    <form action="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet" method="post">

        <input type="hidden" name="opcion" value="editar">
        <input type="hidden" name="apartamento" id="apartamentoHidden" value="">
        <input type="hidden" name="torre" id="torreHidden" value="">

        <fieldset>

            <legend>Actualización datos del apartamento</legend>

            <div class="form-group">
            <label for="apartamento">Apartamento</label>
            <input class="form-control" name="apartamento" id="apartamento" value=""
                   type="number" placeholder="número apartamento" required autofocus pattern="[0-9]{3,5}"/> <br/>
            </div>

            <div class="form-group">
            <label for="torre">Torre</label>
            <input class="form-control" name="torre" id="torre" value="" type="text" placeholder="número torre"
                   required pattern="[A-Z0-9]{1}"/> <br/>
            </div>

            <div class="form-group">
            <label for="Estadocartera">Estado cartera</label>
            <input class="form-control" list="estadocartera" name="cartera" id="cartera" required placeholder="seleccione una opción" value="">

            <datalist id="estadocartera">
                <option value="Al dia">
                <option value="En mora">
            </datalist>
            </div> <br>

            <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Enviar formulario</button>

        </fieldset>

    </form>

    </div>

</div>
<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath()%>/templates/datatableprueba/js/script.js"></script>
<jsp:include page="/templates/parteInferior.jsp"/>
