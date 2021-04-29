package co.com.horisoft.controller;

import co.com.horisoft.dao.UsuarioDAO;
import co.com.horisoft.modelo.Usuario;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UsuarioController", value = "/UsuarioController")
public class UsuarioController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");
        if (opcion.equals("crearUsuario")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/crearUsuario.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarUsuario")) {

            UsuarioDAO usuarioDAO = new UsuarioDAO();
            List<Usuario> lista=new ArrayList<>();
            try {
                lista=usuarioDAO.obtenerUsuarios();
                for (Usuario usuario : lista) {

                    System.out.println(usuario);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/listarUsuario.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idUsuario"));
            System.out.println("Editar id: "+id);
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuario usuario = new Usuario();
            try {
                usuario=usuarioDAO.obtenerUsuarios(id);
                System.out.println(usuario);
                request.setAttribute("usuario", usuario);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/editarUsuario.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }else if(opcion.equals("eliminar")) {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            int id=Integer.parseInt(request.getParameter("idUsuario"));
            try {
                usuarioDAO.eliminar(id);
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

            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuario usuario = new Usuario();
            usuario.setNombreUsuario(request.getParameter("nombreUsuario"));
            usuario.setContrasena(request.getParameter("contraUsuario"));
            usuario.setEstadoUsuario(request.getParameter("estadoUsuario"));
            usuario.setRolUsuario(request.getParameter("rolUsuario"));

            try {
                usuarioDAO.guardar(usuario);
                System.out.println("Registro guardado");

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }



        }else if(opcion.equals("editar")) {
            Usuario usuario = new Usuario();
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            usuario.setIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));
            usuario.setNombreUsuario(request.getParameter("nombreUsuario"));
            usuario.setContrasena(request.getParameter("contraUsuario"));
            usuario.setEstadoUsuario(request.getParameter("estadoUsuario"));
            usuario.setRolUsuario(request.getParameter("rolUsuario"));
            try {
                usuarioDAO.editar(usuario);
                System.out.println("Registro actualizado");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("validar")) {

            System.out.println("seleccionó Validar usuario");
            String NombreUsuario = request.getParameter("nombreUsuario");
            String Clave = request.getParameter("contraUsuario");
            UsuarioDAO usuarioDAO = new UsuarioDAO();


            try {
                //iniciamos usuario con el usuario que traiga el metodo de validación
                Usuario usuario = usuarioDAO.validarUsuario(NombreUsuario, Clave);

                if (usuario!=null){
                    String rolUsu = usuario.getRolUsuario();
                     if (rolUsu.equals("Residente")){

                        RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/Residente.jsp");
                        requestDispacher.forward(request, response);
                        System.out.println("Rol residente" );
                    }

                    else if (rolUsu.equals("Gestionador Zona")){

                        RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/Gestionador.jsp");
                        requestDispacher.forward(request, response);
                        System.out.println("Rol Gestionador" );
                    }

                    else if(rolUsu.equals("Administrador Conjunto")){

                        RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/Administrador.jsp");
                        requestDispacher.forward(request, response);
                    }
                }else{

                    RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/usuario/accesoDenegado.jsp");
                    requestDispacher.forward(request, response);

                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (ServletException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }
    }
}
