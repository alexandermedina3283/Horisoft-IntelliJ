
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<section class="registrouser">
    <div class="contenedor">
        <h2 class="formulario">Diligencie el formulario en su totalidad</h2>
        <form action="http://localhost:8080/Horisoft_war_exploded/UsuarioController" method="post">
            <input type="hidden" name="opcion" value="guardar">
            <fieldset>
                <legend>Formulario registro</legend>
                <label for="nombreUsuario">Nombre usuario :</label>
                <input type="text" name="nombreUsuario" id="nombreUsuario"
                       placeholder="nombre usuario" autofocus="" > <br>
                <label for="contraUsuario">Contraseña :</label>
                <input type="password" name="contraUsuario" id="contraUsuario"
                       placeholder="ingrese contraseña" > <br>
                <label for="estadouser">Estado usuario:</label>
                <input list="estado_usuario" name="estadoUsuario" id="estadouser"
                       placeholder="seleccione estado" ><datalist id="estado_usuario">
                <option value = "Activo"></option>
                <option value = "Inactivo"></option>
            </datalist> <br>
                <label for="rol">Tipo usuario:</label>
                <input list="rol_usuario" name="rolUsuario" id="rol"
                       placeholder="Seleccione tipo usuario" ><datalist id= "rol_usuario">
                <option value = "Administrador Conjunto"></option>
                <option value = "Gestionador Zona"></option>
                <option value = "Residente"></option>
            </datalist> <br>
                <input type="submit" name= "botonEnviar" value="GUARDAR"/>
            </fieldset>

        </form>
    </div>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>

