package co.com.horisoft.controller;
import co.com.horisoft.dao.SalonSocialDAO;
import co.com.horisoft.modelo.SalonSocial;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SalonSocialServlet", value = "/SalonSocialServlet")
public class SalonSocialServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String opcion = request.getParameter("opcion");
        if (opcion.equals("crearReservaSalon")) {
            System.out.println("seleccionó crear");
            RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/salonSocial/crearReserva.jsp");
            requestDispacher.forward(request, response);

        }else if(opcion.equals("listarReservaSalon")) {

            SalonSocialDAO salonSocialDAO = new SalonSocialDAO();
            List<SalonSocial> lista=new ArrayList<>();
            try {
                lista=salonSocialDAO.obtenerReservasSalon();
                for (SalonSocial salonSocial : lista) {

                    System.out.println(salonSocial);
                }
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/salonSocial/listarReserva.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            System.out.println("seleccionó listar");

        }else if (opcion.equals("editar")) {
            int id=Integer.parseInt(request.getParameter("idInscripcion"));
            System.out.println("Editar id: "+id);
            SalonSocialDAO salonSocialDAO = new SalonSocialDAO();
            SalonSocial salonSocial = new SalonSocial();
            try {
                salonSocial=salonSocialDAO.obtenerResevasSalon(id);
                System.out.println(salonSocial);
                request.setAttribute("salonSocial", salonSocial);
                RequestDispatcher requestDispacher = request.getRequestDispatcher("/vistas/salonSocial/editarReserva.jsp");
                requestDispacher.forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if(opcion.equals("eliminar")) {
            SalonSocialDAO salonSocialDAO = new SalonSocialDAO();
            int id=Integer.parseInt(request.getParameter("idInscripcion"));
            try {
                salonSocialDAO.eliminar(id);
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

            SalonSocialDAO salonSocialDAO = new SalonSocialDAO();
            SalonSocial salonSocial = new SalonSocial();
            salonSocial.setFechaPago(Date.valueOf(request.getParameter("fechaPagoReserva")));
            salonSocial.setNumeroComprobante(request.getParameter("numComprobante"));
            salonSocial.setValorDeposito(Integer.parseInt(request.getParameter("valorDeposito")));
            salonSocial.setIdInscripcion(Integer.parseInt(request.getParameter("idInscripcionReserva")));

            try {
                salonSocialDAO.guardar(salonSocial);
                System.out.println("Registro guardado");

                RequestDispatcher requestDispacher = request.getRequestDispatcher("/index.jsp");
                requestDispacher.forward(request, response);


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }else if (opcion.equals("editar")) {
            SalonSocial salonSocial = new SalonSocial();
            SalonSocialDAO salonSocialDAO = new SalonSocialDAO();
            salonSocial.setFechaPago(Date.valueOf(request.getParameter("fechaPagoReserva")));
            salonSocial.setNumeroComprobante(request.getParameter("numComprobante"));
            salonSocial.setValorDeposito(Integer.parseInt(request.getParameter("valorDeposito")));
            salonSocial.setIdInscripcion(Integer.parseInt(request.getParameter("idInscripcionReserva")));

            try {
                salonSocialDAO.editar(salonSocial);
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
