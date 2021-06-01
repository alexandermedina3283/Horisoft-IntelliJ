package co.com.horisoft.controller;

import co.com.horisoft.modelo.beans.Comentario;
import co.com.horisoft.modelo.beans.Usuario;
import co.com.horisoft.modelo.dao.CategoriaResidenteDAO;
import co.com.horisoft.modelo.beans.CategoriaResidente;
import co.com.horisoft.modelo.dao.ComentarioDAO;
import co.com.horisoft.modelo.dao.UsuarioDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CategoriaResidenteServlet", value = "/CategoriaResidenteServlet")
public class CategoriaResidenteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");
        if (opcion.equals("crearCategoriaResidente")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/categoriaResidente/crearCategoria.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarCategoriaResidente")) {

            CategoriaResidenteDAO categoriaResidenteDAO = new CategoriaResidenteDAO();
            List<CategoriaResidente> lista=new ArrayList<>();
            try {
                lista=categoriaResidenteDAO.obtenerCategorias();
                for (CategoriaResidente categoriaResidente : lista) {

                    System.out.println(categoriaResidente);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/categoriaResidente/listarCategoria.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idCategoria"));
            System.out.println("Editar id: "+id);
            CategoriaResidenteDAO categoriaResidenteDAO = new CategoriaResidenteDAO();
            CategoriaResidente categoriaResidente = new CategoriaResidente();
            try {
                categoriaResidente=categoriaResidenteDAO.obtenerCategorias(id);
                System.out.println(categoriaResidente);
                request.setAttribute("categoriaResidente", categoriaResidente);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/categoriaResidente/editarCategoria.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            CategoriaResidenteDAO categoriaResidenteDAO = new CategoriaResidenteDAO();
            int id=Integer.parseInt(request.getParameter("idCategoria"));
            try {
                categoriaResidenteDAO.eliminar(id);
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

            CategoriaResidenteDAO categoriaResidenteDAO = new CategoriaResidenteDAO();
            CategoriaResidente categoriaResidente = new CategoriaResidente();
            categoriaResidente.setNombreCategoria(request.getParameter("nombreCategoria"));

            try {
                categoriaResidenteDAO.guardar(categoriaResidente);
                System.out.println("Registro guardado");

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }


        }else if (opcion.equals("editar")) {
            CategoriaResidente categoriaResidente = new CategoriaResidente();
            CategoriaResidenteDAO categoriaResidenteDAO = new CategoriaResidenteDAO();
            categoriaResidente.setIdCategoria(Integer.parseInt(request.getParameter("idCategoria")));
            categoriaResidente.setNombreCategoria(request.getParameter("nombreCategoria"));

            try {
                categoriaResidenteDAO.editar(categoriaResidente);
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
