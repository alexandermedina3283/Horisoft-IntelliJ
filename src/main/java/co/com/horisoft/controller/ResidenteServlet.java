package co.com.horisoft.controller;

import co.com.horisoft.modelo.beans.CategoriaResidente;
import co.com.horisoft.modelo.dao.CategoriaResidenteDAO;
import co.com.horisoft.modelo.dao.ResidenteDAO;
import co.com.horisoft.modelo.beans.Residente;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ResidenteServlet", value = "/ResidenteServlet")
public class ResidenteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");
        if (opcion.equals("crearResidente")) {
            System.out.println("seleccionÃ³ crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/residente/crearResidenteTemp.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarResidente")) {

            ResidenteDAO residenteDAO = new ResidenteDAO();
            List<Residente> lista=new ArrayList<>();
            try {
                lista=residenteDAO.obtenerResidentes();
                for (Residente residente : lista) {

                    System.out.println(residente);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("categoriaDAO", new CategoriaResidenteDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/residente/listarResidenteTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionÃ³ listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idResidente"));
            System.out.println("Editar id: "+id);
            ResidenteDAO residenteDAO = new ResidenteDAO();
            Residente residente = new Residente(id, opcion, opcion, id, opcion, opcion, opcion, null, opcion, opcion, opcion, id);
            try {
                residente=residenteDAO.obtenerResidentes(id);
                System.out.println(residente);
                request.setAttribute("residente", residente);
                request.setAttribute("categoriaRes", new CategoriaResidenteDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/residente/editarResidenteTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            ResidenteDAO residenteDAO = new ResidenteDAO();
            int id=Integer.parseInt(request.getParameter("idResidente"));
            try {

                request.setAttribute("mensaje", "Â¡El residente no se eliminÃ³, tiene registros asociados!");

                if(residenteDAO.eliminar(id)){

                    request.setAttribute("mensaje", "Â¡El residente se eliminÃ³ correctamente!");
                }
                System.out.println("Registro eliminado correctamente");

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/ResidenteServlet?opcion=listarResidente");
                requestDispacher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");

        if (opcion.equals("guardar")) {

            ResidenteDAO residenteDAO = new ResidenteDAO();
            Residente residente = new Residente(0, opcion, opcion, 0, opcion, opcion, opcion, null, opcion, opcion, opcion, 0);
            residente.setNombre(request.getParameter("nombreResidente"));
            residente.setApellido(request.getParameter("apellidoResidente"));
            residente.setIdentificacion(request.getParameter("identificacionResidente"));
            residente.setFechaNacimiento(Date.valueOf(request.getParameter("fechaNacimiento")));
            residente.setTelefono(request.getParameter("telefonoResidente"));
            residente.setEmail(request.getParameter("emailResidente"));
            residente.setEstado(request.getParameter("estadoResidente"));
            residente.setApartamento(Integer.parseInt(request.getParameter("numApartamento")));
            residente.setTorre(request.getParameter("numTorre"));
            residente.setCategoria(Integer.parseInt(request.getParameter("categoriaResidente")));


            try {
                residenteDAO.guardar(residente);
                System.out.println("Registro guardado");

//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//            ResidenteDAO residenteDAO = new ResidenteDAO();
            List<Residente> lista=new ArrayList<>();
            try {
                lista=residenteDAO.obtenerResidentes();
                for (Residente residenteG : lista) {

                    System.out.println(residente);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "Â¡El residente se creÃ³ correctamente!");
                request.setAttribute("categoriaDAO", new CategoriaResidenteDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/residente/listarResidenteTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if (opcion.equals("editar")) {
            ResidenteDAO residenteDAO = new ResidenteDAO();
            Residente residente = new Residente(0, opcion, opcion, 0, opcion, opcion, opcion, null, opcion, opcion, opcion, 0);
            residente.setIdResidente(Integer.parseInt(request.getParameter("idResidente")));
            residente.setNombre(request.getParameter("nombreResidente"));
            residente.setApellido(request.getParameter("apellidoResidente"));
            residente.setIdentificacion(request.getParameter("identificacionResidente"));
            residente.setFechaNacimiento(Date.valueOf(request.getParameter("fechaNacimiento")));
            residente.setTelefono(request.getParameter("telefonoResidente"));
            residente.setEmail(request.getParameter("emailResidente"));
            residente.setEstado(request.getParameter("estadoResidente"));
            residente.setApartamento(Integer.parseInt(request.getParameter("numApartamento")));
            residente.setTorre(request.getParameter("numTorre"));
            residente.setCategoria(Integer.parseInt(request.getParameter("categoriaResidente")));

            try {
                residenteDAO.editar(residente);
                System.out.println("Registro actualizado");
//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//            ResidenteDAO residenteDAO = new ResidenteDAO();
            List<Residente> lista=new ArrayList<>();
            try {
                lista=residenteDAO.obtenerResidentes();
                for (Residente residentel : lista) {

                    System.out.println(residente);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "Â¡El residente se actualizÃ³ correctamente!");
                request.setAttribute("categoriaDAO", new CategoriaResidenteDAO());
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/residente/listarResidenteTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
}
