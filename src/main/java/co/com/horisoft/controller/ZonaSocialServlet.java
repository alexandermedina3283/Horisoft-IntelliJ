package co.com.horisoft.controller;

import co.com.horisoft.modelo.dao.ZonaSocialDAO;
import co.com.horisoft.modelo.beans.ZonaSocial;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ZonaSocialServlet", value = "/ZonaSocialServlet")
public class ZonaSocialServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");
        if (opcion.equals("crearZonaSocial")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/zonaSocial/crearZona.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarZonas")) {

            ZonaSocialDAO zonaSocialDAO = new ZonaSocialDAO();
            List<ZonaSocial> lista=new ArrayList<>();
            try {
                lista=zonaSocialDAO.obtenerZonas();
                for (ZonaSocial zonaSocial : lista) {

                    System.out.println(zonaSocial);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/zonaSocial/listarZonaTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idZona"));
            System.out.println("Editar id: "+id);
            ZonaSocialDAO zonaSocialDAO = new ZonaSocialDAO();
            ZonaSocial zonaSocial = new ZonaSocial();
            try {
                zonaSocial=zonaSocialDAO.obtenerZonas(id);
                System.out.println(zonaSocial);
                request.setAttribute("zonaSocial", zonaSocial);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/zonaSocial/editarZona.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            ZonaSocialDAO zonaSocialDAO = new ZonaSocialDAO();
            int id=Integer.parseInt(request.getParameter("idZona"));
            try {
                zonaSocialDAO.eliminar(id);
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

            ZonaSocialDAO zonaSocialDAO = new ZonaSocialDAO();
            ZonaSocial zonaSocial = new ZonaSocial();
            zonaSocial.setNombreZona(request.getParameter("nombreZona"));

            try {
                zonaSocialDAO.guardar(zonaSocial);
                System.out.println("Registro guardado");

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }


        }else if (opcion.equals("editar")) {
            ZonaSocial zonaSocial = new ZonaSocial();
            ZonaSocialDAO zonaSocialDAO = new ZonaSocialDAO();
            zonaSocial.setIdZona(Integer.parseInt(request.getParameter("idZona")));
            zonaSocial.setNombreZona(request.getParameter("nombreZona"));

            try {
                zonaSocialDAO.editar(zonaSocial);
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
