<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/templates/parteSuperior.jsp"/>


<div class="d-flex justify-content-center flex-column align-items-start">

    <div class="bg-light border rounded p-2 m-2 mt-3 w-50">
        <form action="UsuarioServlet" method="post">
            <input type="hidden" name="opcion" value="guardar">
            <fieldset>

                <legend>Registro de nuevo usuario</legend>

                <div class="form-group">
                <label for="nombreUsuario">Usuario :</label>
                <input class="form-control" type="text" name="nombreUsuario" id="nombreUsuario"
                       placeholder="Digite nombre usuario" autofocus required pattern=[a-zA-Z0-9]{2,40}> <br>
                </div>

                <div class="form-group">
                <label for="contraUsuario">Contraseña :</label>
                <input class="form-control" type="password" name="contraUsuario" id="contraUsuario"
                       placeholder="Ingrese una contraseña" required pattern="^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$"> <br>
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
                    <!--<option value="Residente"></option>-->
                </datalist>
                </div><br>

                <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Enviar formulario</button>
            </fieldset>
        </form>
    </div>

</div>

<jsp:include page="/templates/parteInferior.jsp"/>

