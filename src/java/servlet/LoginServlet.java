package servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import bean.RegistrationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.DBUtils;
import static java.lang.System.out;
import java.sql.ResultSet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class LoginServlet extends HttpServlet {
    
    private final String invalid = "Login.jsp";
    private final String user = "home";
    private final String adminOnly = "admin";

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
//        processRequest(request, response);
        //request.getRequestDispatcher("Login.jsp").forward(request, response);

//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
////            out.println("<!DOCTYPE html>");
////            out.println("<html>");
////            out.println("<head>");
////            out.println("<title>Login</title>");
////            out.println("</head>");
////            out.println("<body>");
////            out.println("<h1>Login</h1>");
////            out.println("<div>");
////            out.println("<form action=\"LoginServlet\" method=\"POST\">");
////            out.println("Username <input type=\\\"text\\\" name=\"Username\"/><br>");
////            out.println("Password <input type=\"password\" name=\"Password\"/><br>");
////            out.println("<button type=\"submit\" </button>Login<br>");
////            out.println("</form>");
////            out.println("</div>");
////            out.println("</body>");
////            out.println("</html>");
//        }
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
//        processRequest(request, response);
        Cookie[] arr = request.getCookies();
        for (int i = 0; i < arr.length; i++) {
            if (arr[i].getName().equalsIgnoreCase("username")) {
                request.setAttribute("username", arr[i].getValue());
            }
            if (arr[i].getName().equalsIgnoreCase("pass")) {
                request.setAttribute("pass", arr[i].getValue());
            }
        }
        request.getRequestDispatcher("Login.jsp").forward(request, response);
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
//        response.setContentType("text/html/charset=UTF-8");
//        processRequest(request, response);
//        String txtUser = request.getParameter("Username");
//        String txtPass = request.getParameter("Password");
//        String email = request.getParameter("Username");
//        request.getRequestDispatcher("Login.jsp").include(request, response);

        String button = request.getParameter("Login");
        String url = invalid;
        try {
            if (button.equals("Login")) {
                String username = request.getParameter("Username");
                String password = request.getParameter("Password");
                String remember = request.getParameter("remember");
                HttpSession session = request.getSession();
                RegistrationDAO dao = new RegistrationDAO();
                boolean result = dao.checkLogin(username, password);
                boolean checkRole = dao.checkRole(username);
                if (result) {
                    Cookie u = new Cookie("username", username);
                    Cookie p = new Cookie("pass", password);
                    u.setMaxAge(86400);
                    if (remember != null) {
                        
                        p.setMaxAge(86400);
                        
                    } else {
                        p.setMaxAge(0);
                    }
                    response.addCookie(u);
                    response.addCookie(p);
                }
                if (result) {
                    session.setAttribute("us", username);
                    session.setAttribute("pw", password);
                    if (checkRole) {
                        url = adminOnly;
                        response.sendRedirect(url);
                    } else {
                        url = user;
                        response.sendRedirect(url);
                    }
                }
            }
            request.setAttribute("ERROR", "Invalid username or password");
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception e) {
        }

//        String txtUser = request.getParameter("Username");
//        String txtPass = request.getParameter("Password");
//        Connection conn = null;
//        PreparedStatement ptm = null;
//        PreparedStatement ptm2 = null;
//        boolean checkValid = true;
//        try {
//            conn = DBUtils.getConnection();
//
//            ptm = conn.prepareStatement("select * from tbl_User where userId = ? and password=?");
//
//            ptm.setString(1, txtUser);
//            ptm.setString(2, txtPass);
//            ResultSet rs = ptm.executeQuery();
//
//            if (rs.next()) {
//                checkValid = true;
//                response.sendRedirect("index.html");
//            } //            if (ptm.getstr){
//            //                
//            //            }
//            else {
//                checkValid = false;
//                response.sendRedirect("Login.jsp");
//            }
//
//        } catch (Exception e) {
//        }
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
