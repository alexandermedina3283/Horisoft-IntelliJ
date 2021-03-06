package co.com.horisoft.controller;

import co.com.horisoft.modelo.dao.InscripcionDAO;
import co.com.horisoft.modelo.beans.Inscripcion;
import co.com.horisoft.modelo.dao.ServiciosZonaDAO;


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
            System.out.println("seleccionÃ³ crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/inscripcion/crearInscripcionTemp.jsp");
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
                request.setAttribute("ActividadDAO", new ServiciosZonaDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/inscripcion/listarInscripcionesTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionÃ³ listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idInscripcion"));
            System.out.println("Editar id: "+id);
            InscripcionDAO inscripcionDAO = new InscripcionDAO();
            Inscripcion inscripcion = new Inscripcion();
            try {
                inscripcion=inscripcionDAO.obtenerInscripciones(id);
                System.out.println(inscripcion);
                request.setAttribute("inscripcion", inscripcion);
                request.setAttribute("servicioZona", new ServiciosZonaDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/inscripcion/editarInscripcionTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            InscripcionDAO inscripcionDAO = new InscripcionDAO();
            int id=Integer.parseInt(request.getParameter("idInscripcion"));
            try {
                request.setAttribute("mensaje", "Â¡La inscripciÃ³n no se eliminÃ³, tiene registros asociados!");

                if(inscripcionDAO.eliminar(id)){

                    request.setAttribute("mensaje", "Â¡La inscripciÃ³n se eliminÃ³ correctamente!");
                }
                System.out.println("Registro eliminado correctamente");

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/InscripcionServlet?opcion=listarInscripcion");
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

//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

//            InscripcionDAO inscripcionDAO = new InscripcionDAO();
            List<Inscripcion> lista=new ArrayList<>();
            try {
                lista=inscripcionDAO.obtenerInscripciones();
                for (Inscripcion inscripcionG : lista) {

                    System.out.println(inscripcion);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "Â¡InscripciÃ³n generada correctamente!");
                request.setAttribute("ActividadDAO", new ServiciosZonaDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/inscripcion/listarInscripcionesTemp.jsp");
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
//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//            InscripcionDAO inscripcionDAO = new InscripcionDAO();
            List<Inscripcion> lista=new ArrayList<>();
            try {
                lista=inscripcionDAO.obtenerInscripciones();
                for (Inscripcion inscripcionl : lista) {

                    System.out.println(inscripcion);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "Â¡La inscripciÃ³n se actualizÃ³ correctamente!");
                request.setAttribute("ActividadDAO", new ServiciosZonaDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/inscripcion/listarInscripcionesTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

    }
}
