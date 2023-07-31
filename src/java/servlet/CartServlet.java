/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.CartDTO;
import bean.MobileDAO;
import database.DBUtils;
import entity.Account;
import entity.Cart;
import entity.Mobile;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class CartServlet extends HttpServlet {

    private int count = 0;

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
            out.println("<title>Servlet CartServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);
//        int quantity = Integer.parseInt(request.getParameter("quantity"));
        List<Mobile> list = new ArrayList<>();
        MobileDAO dao = new MobileDAO();
        Mobile m = new Mobile();
        double total = 0.000;
        int quantity = 1;
        Cookie ck[] = request.getCookies();
        for (int i = 0; i < ck.length; i++) {
            boolean check = dao.checkId(ck[i].getName());
            if (check) {
                m = dao.getMobileByID(ck[i].getName());
                total += m.getPrice() * quantity;
                list.add(m);
            } else {
                continue;
            }

        }
        request.setAttribute("total", total);
        request.setAttribute("cartList", list);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
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
//        PrintWriter out = response.getWriter();
//        processRequest(request, response);
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

//        List<Account> list = new ArrayList<>();
        String sql = "select mobileId from tbl_Mobile where mobileId='M001'";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
        } catch (Exception e) {
        }

        int count = 0;
        HttpSession session = request.getSession();
        String submit = request.getParameter("");
        String id = request.getParameter("id");
        String image = request.getParameter("image");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));

        Cookie c = new Cookie(id, id);
        response.addCookie(c);
        List<Mobile> list = new ArrayList<>();
        MobileDAO dao = new MobileDAO();
        Mobile m = new Mobile();
        Cookie ck[] = request.getCookies();
        for (int i = 0; i < ck.length; i++) {
            boolean check = dao.checkId(ck[i].getName());
            if (check) {
                m = dao.getMobileByID(ck[i].getName());
                list.add(m);
            } else {
                continue;
            }
        }
        request.setAttribute("cartList", list);
        request.setAttribute("ADDSUCCESS", "Add to cart successfully!");
        response.sendRedirect("home");
//        request.getRequestDispatcher("home.jsp").forward(request, response);

//            request.getRequestDispatcher("cart.jsp").forward(request, response);
//        MobileDAO dao = new MobileDAO();
//        List<Mobile> list = new ArrayList<>();
//        Mobile m = new Mobile(id, description, price, image);
//        List<Mobile> item = dao.searchbymobileIdorName(id);
//        list.add(m);
//        session.setAttribute("cartList", list);
//        List<Mobile> cart_List = (ArrayList<Mobile>) session.getAttribute("cartList");
//
//        session.setAttribute("cart_list", cart_List);
//        Mobile b = new Mobile();
//        Cart cm = new Cart();
//        cm.setPrice(price);
//        cm.setDescription(description);
//
//        List<CartDTO> list = new ArrayList<>();
//
//        CartDTO dto = new CartDTO();
//        List<Cart> a = dto.getCart(image, description, price, "1");
//        List<Cart> cart_List = (ArrayList<Cart>) session.getAttribute("cartList");
//        //list.add(c);
//        if (a == null) {
//            session.setAttribute("cardList", a);
//            out.println("<h2>Success</h2>");
//        }else{
//            out.println("<h2>Failed</h2>");
//        }
//        Cookie a = new Cookie("image"+(++count), image);
//        Cookie b = new Cookie("description", description);
//        Cookie c = new Cookie("price", price);
//        response.addCookie(a);
//        response.addCookie(b);
//        response.addCookie(c);
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
