package co.com.horisoft.controller;

import co.com.horisoft.modelo.dao.ApartamentoDAO;
import co.com.horisoft.modelo.beans.Apartamento;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ApartamentoServlet", value = "/ApartamentoServlet")
public class ApartamentoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");
        if (opcion.equals("crearApartamento")) {
            System.out.println("seleccionó crear apartamento");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/apartamento/crearApartamento.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarApartamento")) {

            ApartamentoDAO apartamentoDAO = new ApartamentoDAO();
            List<Apartamento> lista=new ArrayList<>();
            try {
                lista=apartamentoDAO.obtenerApartamentos();
                for (Apartamento apartamento : lista) {

                    System.out.println(apartamento);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/apartamento/listarApartamento.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int apto=Integer.parseInt(request.getParameter("apartamento"));
            String torre= request.getParameter("torre");
            System.out.println("Editar apartamento: "+ apto + "Torre: " + torre);


            ApartamentoDAO apartamentoDAO = new ApartamentoDAO();
            Apartamento apartamento = new Apartamento();
            try {
                apartamento=apartamentoDAO.obtenerApartamentos(apto,torre);
                System.out.println(apartamento);
                request.setAttribute("apartamento", apartamento);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/apartamento/editarApartamento.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            ApartamentoDAO apartamentoDAO = new ApartamentoDAO();
            int apto=Integer.parseInt(request.getParameter("apartamento"));
            String torre= request.getParameter("torre");
            try {
                apartamentoDAO.eliminar(apto, torre);
                System.out.println("Registro eliminado correctamente");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");

        if (opcion.equals("guardar")) {

            ApartamentoDAO apartamentoDAO = new ApartamentoDAO();
            Apartamento apartamento = new Apartamento();
            apartamento.setApartamento(Integer.parseInt(request.getParameter("apartamento")));
            apartamento.setTorre(request.getParameter("torre"));
            apartamento.setEstadoCartera(request.getParameter("cartera"));

            try {
                apartamentoDAO.guardar(apartamento);
                System.out.println("Registro guardado");

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                e.printStackTrace();
            }

        } else if (opcion.equals("editar")) {
            Apartamento apartamento = new Apartamento();
            ApartamentoDAO apartamentoDAO = new ApartamentoDAO();
            apartamento.setApartamento(Integer.parseInt(request.getParameter("apartamento")));
            apartamento.setTorre(request.getParameter("torre"));
            apartamento.setEstadoCartera(request.getParameter("cartera"));

            try {
                apartamentoDAO.editar(apartamento);
                System.out.println("Registro actualizado");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

    }
}
