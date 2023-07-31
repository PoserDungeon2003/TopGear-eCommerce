/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import database.DBUtils;
import entity.Account;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import javax.servlet.http.Cookie;

/**
 *
 * @author Admin
 */
public class RegistrationDAO implements Serializable {

    public boolean checkLogin(String username, String password) throws SQLException, NamingException {
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "select * from tbl_User where userId = ? and password = ?";
                stm = conn.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);

                rs = stm.executeQuery();
                if (rs.next()) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        return false;
    }

    public boolean checkRole(String username) throws SQLException, NamingException {
//        Connection conn = null;
//        PreparedStatement stm = null;
//        ResultSet rs = null;
//        try {
//            conn = DBUtils.getConnection();
//            if (conn != null) {
//                String sql = "select role from tbl_User where userId = ?";
//                stm = conn.prepareStatement(sql);
//                stm.setString(1, username);
//                rs = stm.executeQuery();
//                int role = rs.getInt(1);
//                Account a = new Account(role);
//                if (a.getRole() ==0) {
//                    return false;
//                }
//            }
//        } catch (Exception e) {
//        }
//        return true;
        RegistrationDAO r = new RegistrationDAO();
        List<Account> list = r.getRole(username);
        for (Account a : list) {
            if (a.getRole() == 1 || a.getRole() == 2) {
                return true;
            }
        }
        return false;
    }

    public List<Account> getRole(String username) {
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<Account> list = new ArrayList<>();
        String sql = "select * from tbl_User where userId = ?";
        try {
            conn = DBUtils.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, username);
            rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public void signup(String mobileId, String description, double price, String mobileName, int yearOfProduction, int quantity, int notSale) {
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement("insert into tbl_Mobile values (?,?,?,?,?,?,?)");
            ptm.setString(1, mobileId);
            ptm.setString(2, description);
            ptm.setDouble(3, price);
            ptm.setString(4, mobileName);
            ptm.setInt(5, yearOfProduction);
            ptm.setInt(6, quantity);
            ptm.setInt(7, notSale);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }
}
