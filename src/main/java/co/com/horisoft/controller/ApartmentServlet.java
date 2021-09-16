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

@WebServlet(name = "ApartmentServlet", value = "/ApartmentServlet")
public class ApartmentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");
        if (opcion.equals("crearApartamento")) {
            System.out.println("seleccionó crear apartamento");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/apartamento/crearApartamentoTemp.jsp");
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
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/apartamento/listarApartamentoTemp.jsp");
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
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/apartamento/editarApartamentoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            ApartamentoDAO apartamentoDAO = new ApartamentoDAO();
            int apto=Integer.parseInt(request.getParameter("apartamento"));
            String torre= request.getParameter("torre");
            try {
                request.setAttribute("mensaje", "¡El apartamento no se eliminó, tiene registros asociados!");

                if(apartamentoDAO.eliminar(apto, torre)){

                    request.setAttribute("mensaje", "¡El apartamento se eliminó correctamente!");
                }
                System.out.println("Registro eliminado correctamente");

            } catch (SQLException e) {
                e.printStackTrace();
            }
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/ApartmentServlet?opcion=listarApartamento");
            requestDispacher.forward(request, response);

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

                request.setAttribute("mensaje", "¡El apartamento que desea registrar ya existe!");

                if(apartamentoDAO.guardar(apartamento)){

                    request.setAttribute("mensaje", "¡El apartamento se creó correctamente!");

                }

                System.out.println("Registro guardado");


            } catch (SQLException e) {
                e.printStackTrace();
            }

            List<Apartamento> lista=new ArrayList<>();
            try {
                lista=apartamentoDAO.obtenerApartamentos();
                for (Apartamento listaApartamento : lista) {

                    System.out.println(apartamento);
                }
                request.setAttribute("lista", lista);

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/apartamento/listarApartamentoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
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


            } catch (SQLException e) {
                e.printStackTrace();
            }

            List<Apartamento> lista=new ArrayList<>();
            try {
                lista=apartamentoDAO.obtenerApartamentos();
                for (Apartamento listaApartamento : lista) {

                    System.out.println(apartamento);
                }
                request.setAttribute("lista", lista);
                request.setAttribute("mensaje", "¡El apartamento se actualizó correctamente!");
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/apartamento/listarApartamentoTemp.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }

    }
}
