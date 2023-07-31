package servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.DBUtils;

/**
 *
 * @author Admin
 */
public class ProductServlet extends HttpServlet {

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
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>ProductServlet</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Get Parameter Values Demo</h1>");
//            out.println("<div>");
//            out.println("<form action=\"ProductServlet\" method=\"POST\">");
//            out.println("<input type=\"checkbox\" name=\"Products\" value=\"Servlet & JSP\"/>Servlet & JSP <br>");
//            out.println("<input type=\"checkbox\" name=\"Products\" value=\"Struct & JSF\"/>Struct & JSF <br>");
//            out.println("<input type=\"checkbox\" name=\"Products\" value=\"EJB\"/>EJB <br>");
//            out.println("<input type=\"checkbox\" name=\"Products\" value=\"XMJ\" />XMJ <br>");
//            out.println("<input type=\"checkbox\" name=\"Products\" value=\"Java Web Services\" />Java Web Services <br>");
//            out.println("<input type=\"checkbox\"/>Tomcat name=\"Servlet\"<br>");
//            out.println("<input type=\"checkbox\"/>JBoss name=\"Servlet\"<br>");
//            out.println("<input type=\"checkbox\"/>Others name=\"Servlet\"<br>");
//            out.println("<button type=\"submit\" </button>Choose<br>");
//            out.println("</form>");
//            out.println("</div>");
//            out.println("</body>");
//            out.println("</html>");
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
        processRequest(request, response);
            
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
//        processRequest(request, response);
        String Products[] = request.getParameterValues("Products");

        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement("insert into Products([CustomerChoice]) values (?)");

            String s = "";
            for (String hb : Products) {
                s += hb + ", ";

            }
            ptm.setString(1, s);
            ptm.executeUpdate();

        } catch (Exception e) {
        } finally {
            request.getRequestDispatcher("ProductServlet.jsp").forward(request, response);
        }
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
