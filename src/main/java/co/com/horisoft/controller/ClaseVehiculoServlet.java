package co.com.horisoft.controller;

import co.com.horisoft.modelo.dao.ClaseVehiculoDAO;
import co.com.horisoft.modelo.beans.ClaseVehiculo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ClaseVehiculoServlet", value = "/ClaseVehiculoServlet")
public class ClaseVehiculoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");
        if (opcion.equals("crearClaseVehiculo")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/claseVehiculo/crearClaseVehiculo.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarClaseVehiculo")) {

            ClaseVehiculoDAO claseVehiculoDAO = new ClaseVehiculoDAO();
            List<ClaseVehiculo> lista=new ArrayList<>();
            try {
                lista=claseVehiculoDAO.obtenerClaseVehiculo();
                for (ClaseVehiculo claseVehiculo : lista) {

                    System.out.println(claseVehiculo);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/claseVehiculo/listarClaseVehiculo.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idClaseVehiculo"));
            System.out.println("Editar id: "+id);
            ClaseVehiculoDAO claseVehiculoDAO = new ClaseVehiculoDAO();
            ClaseVehiculo claseVehiculo = new ClaseVehiculo();
            try {
                claseVehiculo=claseVehiculoDAO.obtenerClaseVehiculo(id);
                System.out.println(claseVehiculo);
                request.setAttribute("claseVehiculo", claseVehiculo);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/claseVehiculo/editarClaseVehiculo.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            ClaseVehiculoDAO claseVehiculoDAO = new ClaseVehiculoDAO();
            int id=Integer.parseInt(request.getParameter("idClaseVehiculo"));
            try {
                claseVehiculoDAO.eliminar(id);
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

            ClaseVehiculoDAO claseVehiculoDAO = new ClaseVehiculoDAO();
            ClaseVehiculo claseVehiculo = new ClaseVehiculo();
            claseVehiculo.setNombreClaseVehiculo(request.getParameter("nombreClaseVehiculo"));

            try {
                claseVehiculoDAO.guardar(claseVehiculo);
                System.out.println("Registro guardado");

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }


        }else if (opcion.equals("editar")) {
            ClaseVehiculo claseVehiculo = new ClaseVehiculo();
            ClaseVehiculoDAO claseVehiculoDAO = new ClaseVehiculoDAO();
            claseVehiculo.setIdClaseVehiculo(Integer.parseInt(request.getParameter("idClaseVehiculo")));
            claseVehiculo.setNombreClaseVehiculo(request.getParameter("nombreClaseVehiculo"));

            try {
                claseVehiculoDAO.editar(claseVehiculo);
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
