
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:include page="/templates/parteSuperior.jsp"/>
<nav>
    <h3>Menu Principal</h3>
    <table>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet?opcion=crearUsuario">Crear usuario</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/UsuarioServlet?opcion=listarUsuario">Listar usuarios</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet?opcion=crearApartamento">Crear apartamento</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ApartamentoServlet?opcion=listarApartamento">Listar apartamentos</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=crearResidente">Crear residente</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=listarResidente">Listar residente</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=crearMascota">Crear mascota</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/MascotaServlet?opcion=listarMascota">Listar mascotas</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoServlet?opcion=crearParqueadero">Crear parqueadero</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ParqueaderoServlet?opcion=listarParqueadero">Listar parqueaderos</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet?opcion=crearInscripcion">Crear inscripcion</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/InscripcionServlet?opcion=listarInscripcion">Listar inscripcion</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/InvitadoServlet?opcion=crearInvitado">Crear invitado</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/InvitadoServlet?opcion=listarInvitado">Listar invitado</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet?opcion=crearComentario">Crear comentario</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet?opcion=listarComentario">Listar comentario</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=crearReservaSalon">Crear reserva salón social</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=listarReservaSalon">Listar reservas salón social</td>
        </tr>

    </table><br>
</nav>

<jsp:include page="/templates/parteInferior.jsp"/>
