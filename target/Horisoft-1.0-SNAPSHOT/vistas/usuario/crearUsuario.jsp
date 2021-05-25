<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>

<section class="registrouser">
    <div class="contenedor">

        <form action="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet" method="post">
            <input type="hidden" name="opcion" value="guardar">
            <fieldset>

                <legend>Registro de nuevo usuario</legend>

                <div class="form-group">
                <label for="nombreUsuario">Nombre usuario :</label>
                <input class="form-control" type="text" name="nombreUsuario" id="nombreUsuario"
                       placeholder="Digite nombre usuario" autofocus required pattern=[a-zA-Z0-9]{2,40}> <br>
                </div>

                <div class="form-group">
                <label for="contraUsuario">Contraseña :</label>
                <input class="form-control" type="password" name="contraUsuario" id="contraUsuario"
                       placeholder="Ingrese su contraseña" required pattern="^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$"> <br>
                </div>
                <p>La contraseña debe tener entre 8 y 16 caracteres, al menos un dígito, una minúscula y una mayúscula.</p>

                <div class="form-group">
                <label for="estadouser">Estado usuario:</label>
                <input class="form-control" list="estado_usuario" name="estadoUsuario" id="estadouser"
                       placeholder="Seleccione una opción" required>
                <datalist id="estado_usuario">
                    <option value="Activo"></option>
                    <option value="Inactivo"></option>
                </datalist>
                </div><br>

                <div class="form-group">
                <label for="rol">Tipo usuario:</label>
                <input class="form-control" list="rol_usuario" name="rolUsuario" id="rol"
                       placeholder="Seleccione una opción" required>
                <datalist id="rol_usuario">
                    <option value="Administrador Conjunto"></option>
                    <option value="Gestionador Zona"></option>
                    <option value="Residente"></option>
                </datalist>
                </div><br>

                <button type="submit" class="btn btn-secondary">Guardar</button>
            </fieldset>

        </form>
    </div>
</section>
<jsp:include page="/templates/parteInferior.jsp"/>

