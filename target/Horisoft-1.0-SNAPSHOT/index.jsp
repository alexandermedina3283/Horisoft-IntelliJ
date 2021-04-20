<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<nav>
    <h1>Menu principal</h1>
    <table>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/UsuarioController?opcion=crearUsuario">Crear usuario</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/UsuarioController?opcion=listarUsuario">Listar usuarios</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ApartamentoController?opcion=crearApartamento">Crear apartamento</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ApartamentoController?opcion=listarApartamento">Listar apartamentos</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/MascotaController?opcion=crearMascota">Crear mascota</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/MascotaController?opcion=listarMascota">Listar mascotas</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoController?opcion=crearParqueadero">Crear parqueadero</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoController?opcion=listarParqueadero">Listar parqueaderos</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ResidenteController?opcion=crearResidente">Crear residente</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ResidenteController?opcion=listarResidente">Listar residente</td>
        </tr>

    </table><br>
</nav>

</body>
</html>