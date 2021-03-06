package co.com.horisoft.controller;

import co.com.horisoft.modelo.dao.ApartamentoDAO;
import co.com.horisoft.modelo.beans.Apartamento;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ApartamentoServlet", value = "/ApartamentoServlet", asyncSupported = true)
public class ApartamentoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion=request.getParameter("opcion");
        if (opcion.equals("crearApartamento")) {
            System.out.println("seleccionÃ³ crear apartamento");
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
                PrintWriter out = response.getWriter();
                response.setContentType("application/json;charset=UTF-8");
                response.setHeader("Pragma", "No-cache");
                response.setHeader("Cache-Control", "no-store");
                out.print(cargarDataTable().toString());
                out.flush();

            } catch (SQLException e) {
                e.printStackTrace();
            }

            System.out.println("seleccionÃ³ listar");

        }else if (opcion.equals("editar")) {
            int apto=Integer.parseInt(request.getParameter("apartamento"));
            String torre= request.getParameter("torre");
            System.out.println("Editar apartamento: " + apto + "Torre: " + torre);


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
                boolean estadoOperacion = false;
                estadoOperacion = apartamentoDAO.eliminar(apto, torre);
                System.out.println("Registro eliminado correctamente");
                PrintWriter out = response.getWriter();
                response.setContentType("application/json;charset=UTF-8");
                response.setHeader("Pragma", "No-cache");
                response.setHeader("Cache-Control", "no-store");
                out.print(estadoOperacion);
                out.flush();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

    }

    private JsonArray cargarDataTable() throws SQLException {
        ApartamentoDAO apartamentoDAO = new ApartamentoDAO();
        List<Apartamento> listadoApartamentos = apartamentoDAO.obtenerApartamentos();
        JsonArray jsonApartamentos = new JsonArray(listadoApartamentos.size());

        for (Apartamento apartamento:listadoApartamentos){

            JsonObject obj = new JsonObject();

            obj.addProperty("apartamento", apartamento.getApartamento());
            obj.addProperty("torre", apartamento.getTorre());
            obj.addProperty("estadoCartera", apartamento.getEstadoCartera());
            jsonApartamentos.add(obj);
        }

        return jsonApartamentos;
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
