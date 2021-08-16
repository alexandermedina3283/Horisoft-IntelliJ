package co.com.horisoft.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SesionesServlet", value = "/SesionesServlet")
public class SesionesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession miSesion = request.getSession();
        miSesion.removeAttribute("datosUsuario");
        miSesion.invalidate();
        RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/Login.jsp");
        requestDispacher.forward(request, response);

    }
}
