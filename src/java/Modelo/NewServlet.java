package Modelo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewServlet extends HttpServlet {
    String conexion="conexion.jsp";
    String Categorias="jugadores.jsp";
    String partidas="partidas.jsp";
    String jugadores="jugadores.jsp";
    String reportecate="reportecate.jsp";
    String reportepartidas="reportepartidas.jsp";
    Examen exa=new Examen();
    ExamenDao dao=new ExamenDao();

    public NewServlet() {
        String acceso = null;
        this.vista = request.getRequestDispatcher(acceso);
    }

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("Examen")){
            String Examen = null;
            acceso=Examen;
        }else if(action.equalsIgnoreCase("listar")){
        }
            String Nombre = request.getParameter("nombre");
            String Apellido = request.getParameter("apellido");
            String Edad = request.getParameter("edad");
            String Pais = request.getParameter("pais");
            String Genero = request.getParameter("genero");
            String Ambientacion = request.getParameter("Categorias");
            String Partidas = request.getParameter("partida");
            String Rondas = request.getParameter("ronda");
            String Contricante = request.getParameter("contri");
            exa.setNombre(Nombre);
            exa.setApellido(Apellido);
            exa.setEdad(Edad);
            exa.setPais(Pais);
            exa.setGenero(Genero);
            exa.setAmbientacion(Ambientacion);
            exa.setPartidas(Partidas);
            exa.setRondas(Rondas);
            exa.setContricante(Contricante);
            dao.Examen(exa);
            String Examen=null;
            acceso=Examen;
        }
        RequestDispatcher vista=request.getRequestDispatcher("acceso");

    private static class request {

        private static RequestDispatcher getRequestDispatcher(String acceso) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        public request() {
        }
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

    private static class response {

        public response() {
        }
    }

}
