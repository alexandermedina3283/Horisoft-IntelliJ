package co.com.horisoft.controller;

import co.com.horisoft.dao.ComentarioDAO;
import co.com.horisoft.dao.MascotaDAO;
import co.com.horisoft.modelo.Comentario;
import co.com.horisoft.modelo.Mascota;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@WebServlet(name = "ComentarioController", value = "/ComentarioController")
public class ComentarioController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");
        if (opcion.equals("crearComentario")) {
            System.out.println("seleccionó crear comentario");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/comentario/crearComentario.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarComentario")) {

            ComentarioDAO comentarioDAO = new ComentarioDAO();
            List<Comentario> lista=new ArrayList<>();
            try {
                lista=comentarioDAO.obtenerComentarios();
                for (Comentario comentario : lista) {

                    System.out.println(comentario);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/comentario/listarComentario.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idComentario"));
            System.out.println("Editar id: "+id);
            ComentarioDAO comentarioDAO = new ComentarioDAO();
            Comentario comentario = new Comentario();
            try {
                comentario=comentarioDAO.obtenerComentarios(id);
                System.out.println(comentario);
                request.setAttribute("comentario", comentario);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/comentario/editarComentario.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            ComentarioDAO comentarioDAO = new ComentarioDAO();
            int id=Integer.parseInt(request.getParameter("idComentario"));
            try {
                comentarioDAO.eliminar(id);
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

            ComentarioDAO comentarioDAO = new ComentarioDAO();
            Comentario comentario = new Comentario();

            comentario.setFechaComentario(Date.valueOf(request.getParameter("fechaComentario")));
            comentario.setDescripcionComentario (request.getParameter("descripcionComentario"));
            comentario.setAutorComentario(request.getParameter("autorComentario"));
            comentario.setIdInscripcion(Integer.parseInt(request.getParameter("idInscripcion")));

            try {

                comentarioDAO.guardar(comentario);
                System.out.println("Registro guardado");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if (opcion.equals("editar")) {
            Comentario comentario = new Comentario();
            ComentarioDAO comentarioDAO = new ComentarioDAO();
            comentario.setIdComentario(Integer.parseInt(request.getParameter("idComentario")));
            comentario.setFechaComentario(Date.valueOf(request.getParameter("fechaComentario")));
            comentario.setDescripcionComentario(request.getParameter("descripcionComentario"));
            comentario.setAutorComentario(request.getParameter("autorComentario"));
            comentario.setIdInscripcion(Integer.parseInt(request.getParameter("idInscripcion")));
            try {
                comentarioDAO.editar(comentario);
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
