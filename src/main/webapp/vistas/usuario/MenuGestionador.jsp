
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:include page="/templates/parteSuperior.jsp"/>

<nav>
    <h3>Menu Gestionador Zona</h3>
    <table>

        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ResidenteController?opcion=listarResidente">Listar residente</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ComentarioController?opcion=crearComentario">Crear comentario</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ComentarioController?opcion=listarComentario">Listar comentario</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/InscripcionController?opcion=crearInscripcion">Crear inscripcion</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/InscripcionController?opcion=listarInscripcion">Listar inscripcion</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialController?opcion=crearReservaSalon">Crear evento salon social</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialController?opcion=listarReservaSalon">Listar evento salon social</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/InvitadoController?opcion=crearInvitado">Crear invitado</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/InvitadoController?opcion=listarInvitado">Listar invitado</td>
        </tr>

    </table><br>
</nav>

<jsp:include page="/templates/parteInferior.jsp"/>