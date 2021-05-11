package co.com.horisoft.controller;

import co.com.horisoft.dao.InscripcionDAO;
import co.com.horisoft.dao.MascotaDAO;
import co.com.horisoft.modelo.Inscripcion;
import co.com.horisoft.modelo.Mascota;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;

@WebServlet(name = "InscripcionController", value = "/InscripcionController")
public class InscripcionController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");
        if (opcion.equals("crearInscripcion")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/inscripcion/crearInscripcion.jsp");
            requestDispacher.forward(request, response);

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");

        if (opcion.equals("guardar")) {

            InscripcionDAO inscripcionDAO = new InscripcionDAO();
            Inscripcion inscripcion = new Inscripcion();
            inscripcion.setFechaEntrada(Date.valueOf(request.getParameter("fechaEntrada")));
            inscripcion.setHoraEntrada(request.getParameter("horaEntrada"));
            inscripcion.setFechaSalida(Date.valueOf(request.getParameter("fechaSalida")));
            inscripcion.setHoraSalida(request.getParameter("horaSalida"));
            inscripcion.setEstadoInscripcion(request.getParameter("estadoInscripcion"));
            inscripcion.setIdResidente(Integer.parseInt(request.getParameter("idResidente")));
            inscripcion.setIdActividad(Integer.parseInt(request.getParameter("nombreActividad")));

            try {
                inscripcionDAO.guardar(inscripcion);
                System.out.println("Registro guardado");

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }

    }
}
