package co.com.horisoft.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SesionesServlet", value = "/SesionesServlet")
public class SesionesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");
        if (opcion.equals("accesoNegado")) {
            System.out.println("sitio no permitido");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/contenidoBloqueado.jsp");
            requestDispacher.forward(request, response);

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession miSesion = request.getSession();
        miSesion.removeAttribute("datosUsuario");
        miSesion.invalidate();
        RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/loginUsuario.jsp");
        requestDispacher.forward(request, response);

    }
}
