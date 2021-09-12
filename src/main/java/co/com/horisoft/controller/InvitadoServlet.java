package co.com.horisoft.controller;

import co.com.horisoft.modelo.dao.InvitadoDAO;
import co.com.horisoft.modelo.beans.Invitado;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "InvitadoServlet", value = "/InvitadoServlet")
public class InvitadoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");
        if (opcion.equals("crearInvitado")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/invitado/crearInvitadoTemp.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarInvitado")) {

            InvitadoDAO invitadoDAO = new InvitadoDAO();
            List<Invitado> lista=new ArrayList<>();
            try {
                lista=invitadoDAO.obtenerInvitados();
                for (Invitado invitado : lista) {

                    System.out.println(invitado);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/invitado/listarInvitadoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idInvitado"));
            System.out.println("Editar id: "+id);
            InvitadoDAO invitadoDAO = new InvitadoDAO();
            Invitado invitado = new Invitado();
            try {
                invitado=invitadoDAO.obtenerInvitados(id);
                System.out.println(invitado);
                request.setAttribute("invitado", invitado);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/invitado/editarInvitadoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            InvitadoDAO invitadoDAO = new InvitadoDAO();
            int id=Integer.parseInt(request.getParameter("idInvitado"));
            try {
                invitadoDAO.eliminar(id);
                System.out.println("Registro eliminado correctamente");
//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

//            InvitadoDAO invitadoDAO = new InvitadoDAO();
            List<Invitado> lista=new ArrayList<>();
            try {
                lista=invitadoDAO.obtenerInvitados();
                for (Invitado invitado : lista) {

                    System.out.println(invitado);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡El invitado se eliminó correctamente!");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/invitado/listarInvitado.jsp");
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

            InvitadoDAO invitadoDAO = new InvitadoDAO();
            Invitado invitado = new Invitado();
            invitado.setNombreInvitado(request.getParameter("nombreInvitado"));
            invitado.setApellidoInvitado(request.getParameter("apellidoInvitado"));
            invitado.setIdentificacionInvitado(request.getParameter("identificacionInvitado"));
            invitado.setIdInscripcion(Integer.parseInt(request.getParameter("idInscripcionInvitado")));

            try {
                invitadoDAO.guardar(invitado);
                System.out.println("Registro guardado");

//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//            InvitadoDAO invitadoDAO = new InvitadoDAO();
            List<Invitado> lista=new ArrayList<>();
            try {
                lista=invitadoDAO.obtenerInvitados();
                for (Invitado invitadoG : lista) {

                    System.out.println(invitado);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡El invitado se registró correctamente!");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/invitado/listarInvitadoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if (opcion.equals("editar")) {
            Invitado invitado = new Invitado();
            InvitadoDAO invitadoDAO = new InvitadoDAO();
            invitado.setIdInvitado(Integer.parseInt(request.getParameter("idInvitado")));
            invitado.setNombreInvitado(request.getParameter("nombreInvitado"));
            invitado.setApellidoInvitado(request.getParameter("apellidoInvitado"));
            invitado.setIdentificacionInvitado(request.getParameter("identificacionInvitado"));
            invitado.setIdInscripcion(Integer.parseInt(request.getParameter("idInscripcionInvitado")));
            try {
                invitadoDAO.editar(invitado);
                System.out.println("Registro actualizado");
//                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
//                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//            InvitadoDAO invitadoDAO = new InvitadoDAO();
            List<Invitado> lista=new ArrayList<>();
            try {
                lista=invitadoDAO.obtenerInvitados();
                for (Invitado invitadol : lista) {

                    System.out.println(invitado);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡El invitado se actualizó correctamente!");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/invitado/listarInvitadoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

    }
}
