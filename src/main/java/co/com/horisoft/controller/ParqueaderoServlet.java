package co.com.horisoft.controller;

import co.com.horisoft.modelo.dao.ClaseVehiculoDAO;
import co.com.horisoft.modelo.dao.ParqueaderoDAO;
import co.com.horisoft.modelo.beans.Parqueadero;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ParqueaderoServlet", value = "/ParqueaderoServlet")
public class ParqueaderoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");
        if (opcion.equals("crearParqueadero")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/parqueadero/crearParqueaderoTemp.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarParqueadero")) {

            ParqueaderoDAO parqueaderoDAO = new ParqueaderoDAO();
            List<Parqueadero> lista=new ArrayList<>();
            try {
                lista=parqueaderoDAO.obtenerParqueaderos();
                for (Parqueadero parqueadero : lista) {

                    System.out.println(parqueadero);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("claseVehiculoDAO", new ClaseVehiculoDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/parqueadero/listarParqueaderoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            String id=request.getParameter("idParqueadero");
            System.out.println("Editar id: "+id);
            ParqueaderoDAO parqueaderoDAO = new ParqueaderoDAO();
            Parqueadero parqueadero = new Parqueadero(0, id, id, id, 0, id, id, 0, id, id);
            try {
                parqueadero=parqueaderoDAO.obtenerParqueaderos(id);
                System.out.println(parqueadero);
                request.setAttribute("parqueadero", parqueadero);
                request.setAttribute("tipoVehiculo", new ClaseVehiculoDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/parqueadero/editarParqueaderoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            ParqueaderoDAO parqueaderoDAO = new ParqueaderoDAO();
            String id=request.getParameter("idParqueadero");
            try {
                parqueaderoDAO.eliminar(id);
                System.out.println("Registro eliminado correctamente");
//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

//            ParqueaderoDAO parqueaderoDAO = new ParqueaderoDAO();
            List<Parqueadero> lista=new ArrayList<>();
            try {
                lista=parqueaderoDAO.obtenerParqueaderos();
                for (Parqueadero parqueadero : lista) {

                    System.out.println(parqueadero);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡El parqueadero se eliminó correctamente!");
                request.setAttribute("claseVehiculoDAO", new ClaseVehiculoDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/parqueadero/listarParqueadero.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");

        if (opcion.equals("guardar")) {

            ParqueaderoDAO parqueaderoDAO = new ParqueaderoDAO();
            Parqueadero parqueadero = new Parqueadero(0, opcion, opcion, opcion, 0, opcion, opcion, 0, opcion, opcion);
            parqueadero.setIdParqueadero(request.getParameter("idParqueadero"));
            parqueadero.setUbicacionParqueadero(request.getParameter("ubicacionParqueadero"));
            parqueadero.setPlacaVehiculo(request.getParameter("placaVehiculo"));
            parqueadero.setModeloVehiculo(Integer.parseInt(request.getParameter("modeloVehiculo")));
            parqueadero.setColorVehiculo(request.getParameter("colorVehiculo"));
            parqueadero.setMarcaVehiculo(request.getParameter("marcaVehiculo"));
            parqueadero.setApartamento(Integer.parseInt(request.getParameter("numApartamento")));
            parqueadero.setTorre(request.getParameter("numTorre"));
            parqueadero.setClaseVehiculo(Integer.parseInt(request.getParameter("claseVehiculo")));

            try {
                parqueaderoDAO.guardar(parqueadero);
                System.out.println("Registro guardado");

//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

//            ParqueaderoDAO parqueaderoDAO = new ParqueaderoDAO();
            List<Parqueadero> lista=new ArrayList<>();
            try {
                lista=parqueaderoDAO.obtenerParqueaderos();
                for (Parqueadero parqueaderoG : lista) {

                    System.out.println(parqueadero);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡El parqueadero se creó correctamente!");
                request.setAttribute("claseVehiculoDAO", new ClaseVehiculoDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/parqueadero/listarParqueaderoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if (opcion.equals("editar")) {
            Parqueadero parqueadero = new Parqueadero(0, opcion, opcion, opcion, 0, opcion, opcion, 0, opcion, opcion);
            ParqueaderoDAO parqueaderoDAO = new ParqueaderoDAO();
            parqueadero.setIdParqueadero(request.getParameter("idParqueadero"));
            parqueadero.setUbicacionParqueadero(request.getParameter("ubicacionParqueadero"));
            parqueadero.setPlacaVehiculo(request.getParameter("placaVehiculo"));
            parqueadero.setModeloVehiculo(Integer.parseInt(request.getParameter("modeloVehiculo")));
            parqueadero.setColorVehiculo(request.getParameter("colorVehiculo"));
            parqueadero.setMarcaVehiculo(request.getParameter("marcaVehiculo"));
            parqueadero.setApartamento(Integer.parseInt(request.getParameter("numApartamento")));
            parqueadero.setTorre(request.getParameter("numTorre"));
            parqueadero.setClaseVehiculo(Integer.parseInt(request.getParameter("claseVehiculo")));

            try {
                parqueaderoDAO.editar(parqueadero);
                System.out.println("Registro actualizado");
//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//            ParqueaderoDAO parqueaderoDAO = new ParqueaderoDAO();
            List<Parqueadero> lista=new ArrayList<>();
            try {
                lista=parqueaderoDAO.obtenerParqueaderos();
                for (Parqueadero parqueaderol : lista) {

                    System.out.println(parqueadero);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡El parqueadero se actualizó correctamente!");
                request.setAttribute("claseVehiculoDAO", new ClaseVehiculoDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/parqueadero/listarParqueaderoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
}
