package co.com.horisoft.controller;

import co.com.horisoft.modelo.dao.ServiciosZonaDAO;
import co.com.horisoft.modelo.beans.ServiciosZona;
import co.com.horisoft.modelo.dao.ZonaSocialDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServiciosZonaServlet", value = "/ServiciosZonaServlet")
public class ServiciosZonaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");
        if (opcion.equals("crearActividad")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/serviciosZona/crearActividad.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarServicios")) {

            ServiciosZonaDAO serviciosZonaDAO = new ServiciosZonaDAO();
            List<ServiciosZona> lista=new ArrayList<>();
            try {
                lista=serviciosZonaDAO.obtenerServicios();
                for (ServiciosZona serviciosZona : lista) {

                    System.out.println(serviciosZona);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("zonasDAO",new ZonaSocialDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/serviciosZona/listarActividadTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idActividad"));
            System.out.println("Editar id: "+id);
            ServiciosZonaDAO serviciosZonaDAO = new ServiciosZonaDAO();
            ServiciosZona serviciosZona = new ServiciosZona();
            try {
                serviciosZona=serviciosZonaDAO.obtenerServicios(id);
                System.out.println(serviciosZona);
                request.setAttribute("serviciosZona", serviciosZona);
                request.setAttribute("nomZona", new ZonaSocialDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/serviciosZona/editarActividad.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            ServiciosZonaDAO serviciosZonaDAO = new ServiciosZonaDAO();
            int id=Integer.parseInt(request.getParameter("idActividad"));
            try {
                serviciosZonaDAO.eliminar(id);
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

            ServiciosZonaDAO serviciosZonaDAO = new ServiciosZonaDAO();
            ServiciosZona serviciosZona = new ServiciosZona();
            serviciosZona.setNombreActividad(request.getParameter("nombreActividad"));
            serviciosZona.setIdZona(Integer.parseInt(request.getParameter("idZona")));

            try {
                serviciosZonaDAO.guardar(serviciosZona);
                System.out.println("Registro guardado");

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }


        }else if (opcion.equals("editar")) {
            ServiciosZona serviciosZona = new ServiciosZona();
            ServiciosZonaDAO serviciosZonaDAO = new ServiciosZonaDAO();
            serviciosZona.setIdActividad(Integer.parseInt(request.getParameter("idActividad")));
            serviciosZona.setNombreActividad(request.getParameter("nombreActividad"));
            serviciosZona.setIdZona(Integer.parseInt(request.getParameter("idZona")));

            try {
                serviciosZonaDAO.editar(serviciosZona);
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
