
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:include page="/templates/superiorMenuGestionador.jsp"/>
<nav>
    <h3>Menu Gestionador Zona</h3>
    <table>

        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ResidenteServlet?opcion=listarResidente">Consultar residentes</td>
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
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/InvitadoServlet?opcion=listarInvitado">Listar invitados</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet?opcion=crearComentario">Crear comentario</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/ComentarioServlet?opcion=listarComentario">Consultar comentarios</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=crearReservaSalon">Crear reserva salon social</td>
        </tr>
        <tr>
            <td> <a href="http://localhost:8080/Horisoft_war_exploded/SalonSocialServlet?opcion=listarReservaSalon">Listar reservas salon social</td>
        </tr>

    </table><br>
</nav>

<jsp:include page="/templates/inferiorMenuGestionador.jsp"/>
