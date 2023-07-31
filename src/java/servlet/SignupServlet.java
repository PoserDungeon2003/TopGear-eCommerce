/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.AccountDAO;
import database.DBUtils;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class SignupServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignupServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignupServlet at " + request.getContextPath() + "</h1>");
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
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        response.setContentType("text/html; charset=UTF-8");
        String userId = request.getParameter("username");
        String email = request.getParameter("your_email");
        String password = request.getParameter("password");
        String confirm_password = request.getParameter("comfirm_password");
        int role = Integer.parseInt(request.getParameter("role"));
        AccountDAO dao = new AccountDAO();
        boolean check = dao.checkExistAccount(userId);
        if(check){
            request.setAttribute("error", "Existed username, please choose another");
            request.getRequestDispatcher("Signup.jsp").forward(request, response);
        }
        else if (!password.equalsIgnoreCase(confirm_password)){
            request.setAttribute("error", "Password does not match, please try again");
            request.getRequestDispatcher("Signup.jsp").forward(request, response);
        }
        else{
            dao.addAccount(userId, password, email, role);
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
//        AccountDAO account = new AccountDAO();
//        String FullName = request.getParameter("FullName");
//        String Username = request.getParameter("Username");
//        String Email = request.getParameter("Email");
//        int Phone = Integer.parseInt(request.getParameter("Phone"));
//        String Password = request.getParameter("Password");
//        String ConfirmPassword = request.getParameter("ConfirmPassword");
//
//
//        if (!Password.equalsIgnoreCase(ConfirmPassword)) {
//            response.sendRedirect("Signup.jsp");
//        }
//        Connection conn = null;
//        PreparedStatement ptm = null;
//        PreparedStatement ptm2 = null;
//        PreparedStatement checkUsername = null;
//        try {
//            conn = DBUtils.getConnection();
//
//            checkUsername = conn.prepareStatement("select * from UserInfo where Username=?");
//            checkUsername.setString(1, Username);
//            ResultSet rs = checkUsername.executeQuery();
//
//            if (rs.next()) {
//                response.sendRedirect("Signup.jsp");
//            }
//            ptm = conn.prepareStatement("insert into Logins([txtUser],[txtPass],[Email],[RoleID]) values (?,?,?,?)");
//            ptm.setString(1, Username);
//            ptm.setString(2, Password);
//            ptm.setString(3, Email);
//            ptm.setString(4, "US");
//            ptm.executeUpdate();
//            ptm2 = conn.prepareStatement("insert into UserInfo values(?,?,?,?)");
//            ptm2.setString(1, Username);
//            ptm2.setString(2, Email);
//            ptm2.setString(3, FullName);
//            ptm2.setInt(4, Phone);
//            ptm2.executeUpdate();
//            response.sendRedirect("Login.jsp");
//
//        } catch (Exception e) {
////        } finally {
////            request.getRequestDispatcher("index.html").forward(request, response);
////        }
//
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
