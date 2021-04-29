<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<section class="registrouser">
    <div class="contenedor">


        <form action="http://localhost:8080/Horisoft_war_exploded/UsuarioController" method="post">
            <input type="hidden" name="opcion" value="validar">
            <fieldset>
                <legend>Formulario Ingreso</legend>
                <div class="form-group">
                    <label for="nombreUsuario">Nombre usuario :</label>
                    <input class="form-control" type="text" name="nombreUsuario"  id="nombreUsuario"
                           placeholder="Digite nombre usuario" autofocus required pattern=[a-zA-Z0-9]{2,40}> <br>
                </div>
                <div class="form-group">
                    <label for="contraUsuario">Contraseña :</label>
                    <input class="form-control" type="password" name="contraUsuario" id="contraUsuario"
                           placeholder="Ingrese su contraseña" required pattern="*{8,15}"> <br>
                </div>
                <button type="submit" class="btn btn-secondary">Iniciar sesión</button>
            </fieldset>
        </form>
    </div>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>

