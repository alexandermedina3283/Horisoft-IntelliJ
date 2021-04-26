
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<section class="registrouser">
    <div class="contenedor">
        <h2 class="titulo">Bienvenido</h2>
        <h2 class="formulario">Ingrese sus datos para acceder</h2>
        <form action="http://localhost:8080/Horisoft_war_exploded/UsuarioController" method="post">
            <input type="hidden" name="opcion" value="validar">
            <fieldset>
                <legend>Formulario Ingreso</legend>
                <label for="nombreUsuario">Nombre usuario :</label>
                <input type="text" name="nombreUsuario" id="nombreUsuario" placeholder="Digite nombre usuario" autofocus required pattern=[a-zA-Z0-9]{2,40}> <br>
                <label for="contraUsuario">Contraseña :</label>
                <input type="password" name="contraUsuario" id="contraUsuario" placeholder="Ingrese su contraseña" required pattern="*{8,15}" > <br>
                <input type="submit" name= "botonIngresar" value="INGRESAR"/>
            </fieldset>
        </form>
    </div>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>

