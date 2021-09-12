package co.com.horisoft.controller;

import co.com.horisoft.modelo.dao.MascotaDAO;
import co.com.horisoft.modelo.beans.Mascota;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "MascotaServlet", value = "/MascotaServlet")
public class MascotaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");
        if (opcion.equals("crearMascota")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/mascota/crearMascotaTemp.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarMascota")) {

            MascotaDAO mascotaDAO = new MascotaDAO();
            List<Mascota> lista=new ArrayList<>();
            try {
                lista=mascotaDAO.obtenerMascotas();
                for (Mascota mascota : lista) {

                    System.out.println(mascota);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/mascota/listarMascotaTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idMascota"));
            System.out.println("Editar id: "+id);
            MascotaDAO mascotaDAO = new MascotaDAO();
            Mascota mascota = new Mascota(id, opcion, opcion, id, opcion, opcion);
            try {
                mascota=mascotaDAO.obtenerMascotas(id);
                System.out.println(mascota);
                request.setAttribute("mascota", mascota);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/mascota/editarMascotaTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            MascotaDAO mascotaDAO = new MascotaDAO();
            int id=Integer.parseInt(request.getParameter("idMascota"));
            try {
                mascotaDAO.eliminar(id);
                System.out.println("Registro eliminado correctamente");
//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//            MascotaDAO mascotaDAO = new MascotaDAO();
            List<Mascota> lista=new ArrayList<>();
            try {
                lista=mascotaDAO.obtenerMascotas();
                for (Mascota mascota : lista) {

                    System.out.println(mascota);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡La mascota se eliminó correctamente!");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/mascota/listarMascotaTemp.jsp");
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

            MascotaDAO mascotaDAO = new MascotaDAO();
            Mascota mascota = new Mascota(0, opcion, opcion, 0, opcion, opcion);
            mascota.setNombre(request.getParameter("nombreMascota"));
            mascota.setClase(request.getParameter("claseMascota"));
            mascota.setApartamento(Integer.parseInt(request.getParameter("numApartamento")));
            mascota.setTorre(request.getParameter("numTorre"));

            try {
                mascotaDAO.guardar(mascota);
                System.out.println("Registro guardado");
//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

//            MascotaDAO mascotaDAO = new MascotaDAO();
            List<Mascota> lista=new ArrayList<>();
            try {
                lista=mascotaDAO.obtenerMascotas();
                for (Mascota mascotaG : lista) {

                    System.out.println(mascota);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡La mascota se registró correctamente!");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/mascota/listarMascotaTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        } else if (opcion.equals("editar")) {
            Mascota mascota = new Mascota(0, opcion, opcion, 0, opcion, opcion);
            MascotaDAO mascotaDAO = new MascotaDAO();
            mascota.setIdMascota(Integer.parseInt(request.getParameter("idMascota")));
            mascota.setNombre(request.getParameter("nombreMascota"));
            mascota.setClase(request.getParameter("claseMascota"));
            mascota.setApartamento(Integer.parseInt(request.getParameter("numApartamento")));
            mascota.setTorre(request.getParameter("numTorre"));
            try {
                mascotaDAO.editar(mascota);
                System.out.println("Registro actualizado");
//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//            MascotaDAO mascotaDAO = new MascotaDAO();
            List<Mascota> lista=new ArrayList<>();
            try {
                lista=mascotaDAO.obtenerMascotas();
                for (Mascota mascotal : lista) {

                    System.out.println(mascota);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡La mascota se actualizó correctamente!");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/mascota/listarMascotaTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }
    }
}
