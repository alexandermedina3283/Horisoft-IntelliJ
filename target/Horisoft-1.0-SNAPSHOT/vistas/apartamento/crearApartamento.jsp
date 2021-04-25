
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>


<section>
    <h1>Formulario de registro residentes</h1>
    <h3>Sección uno</h3>
    <form
            action="http://localhost:8080/Horisoft_war_exploded/ApartamentoController"
            method="post">
        <input type="hidden" name="opcion" value="guardar">
        <fieldset>

            <legend>Datos del apartamento</legend>
            <label for="apartamento">Apartamento</label>
            <input name="apartamento" id="apartamento" type="text" placeholder="número apartamento" required
                   autofocus pattern="[0-9]{3,5}"/> <br/>

            <label for="torre">Torre</label>
            <input name="torre" id="torre" type="text" placeholder="número torre" required pattern="[A-Z0-9]{1}"/> <br/>

            <label for="Estadocartera">Estado cartera</label>
            <input list="estadocartera" name="cartera" required placeholder="seleccione una opción ">

            <datalist id="estadocartera">
                <option value="Al dia">
                <option value="En mora">
            </datalist>


        </fieldset>
        <br/> <input type="submit" value="Guardar"/>


    </form>
</section>

<jsp:include page="/templates/parteInferior.jsp"/>