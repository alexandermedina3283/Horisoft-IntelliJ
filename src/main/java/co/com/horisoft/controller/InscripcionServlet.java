package co.com.horisoft.controller;

import co.com.horisoft.dao.InscripcionDAO;
import co.com.horisoft.dao.MascotaDAO;
import co.com.horisoft.modelo.Inscripcion;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "InscripcionServlet", value = "/InscripcionServlet")
public class InscripcionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");
        if (opcion.equals("crearInscripcion")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/inscripcion/crearInscripcion.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarInscripcion")) {

            InscripcionDAO inscripcionDAO = new InscripcionDAO();
            List<Inscripcion> lista=new ArrayList<>();
            try {
                lista=inscripcionDAO.obtenerInscripciones();
                for (Inscripcion inscripcion : lista) {

                    System.out.println(inscripcion);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/inscripcion/listarInscripciones.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idInscripcion"));
            System.out.println("Editar id: "+id);
            InscripcionDAO inscripcionDAO = new InscripcionDAO();
            Inscripcion inscripcion = new Inscripcion();
            try {
                inscripcion=inscripcionDAO.obtenerInscripciones(id);
                System.out.println(inscripcion);
                request.setAttribute("inscripcion", inscripcion);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/inscripcion/editarInscripcion.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            InscripcionDAO inscripcionDAO = new InscripcionDAO();
            int id=Integer.parseInt(request.getParameter("idInscripcion"));
            try {
                inscripcionDAO.eliminar(id);
                System.out.println("Registro eliminado correctamente");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

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

        }else if (opcion.equals("editar")) {
            Inscripcion inscripcion = new Inscripcion();
            InscripcionDAO inscripcionDAO = new InscripcionDAO();
            inscripcion.setIdInscripcion(Integer.parseInt(request.getParameter("idInscripcion")));
            inscripcion.setFechaEntrada(Date.valueOf(request.getParameter("fechaEntrada")));
            inscripcion.setHoraEntrada(request.getParameter("horaEntrada"));
            inscripcion.setFechaSalida(Date.valueOf(request.getParameter("fechaSalida")));
            inscripcion.setHoraSalida(request.getParameter("horaSalida"));
            inscripcion.setEstadoInscripcion(request.getParameter("estadoInscripcion"));
            inscripcion.setIdResidente(Integer.parseInt(request.getParameter("idResidente")));
            inscripcion.setIdActividad(Integer.parseInt(request.getParameter("nombreActividad")));

            try {
                inscripcionDAO.editar(inscripcion);
                System.out.println("Registro actualizado");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

    }
}
