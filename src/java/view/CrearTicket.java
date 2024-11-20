/*
 * Juan Diaz Project
 */
package view;

import controller.DestinoDAO;
import controller.EmpresaDAO;
import controller.TicketDAO;
import controller.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Destino;
import model.Empresa;
import model.Ticket;
import model.Usuario;

/**
 *
 * @author Juan
 */
@WebServlet(name = "CrearTicket", urlPatterns = {"/Comprar"})
public class CrearTicket extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        DestinoDAO usDAO = new DestinoDAO();
        List<Destino> destinos = usDAO.rDestino();
        
        request.setAttribute("destinos", destinos);

        request.getRequestDispatcher("/cTicket.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        UsuarioDAO usDAO = new UsuarioDAO();
        List<Usuario> usuarios = usDAO.rUsuario();
        request.setAttribute("usuarios", usuarios);
        
        EmpresaDAO emDAO = new EmpresaDAO();
        List<Empresa> empresas = emDAO.rEmpresa();
        request.setAttribute("empresas", empresas);

        
        DestinoDAO desDAO = new DestinoDAO();
        Destino destino = desDAO.soloDestino(Integer.parseInt(request.getParameter("destinoId")));
        request.setAttribute("destino", destino);
        
        
        
        request.getRequestDispatcher("/confirmTicket.jsp").forward(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
