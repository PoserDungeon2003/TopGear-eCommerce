/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import database.DBUtils;
import entity.Account;
import entity.Mobile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class AccountDAO {

    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String sql = "select * from tbl_User";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

//    public int getRole(String username) {
//        String sql = "select role from tbl_User where userId = ?";
//        Account a = new Account(role);
//        try {
//            conn = DBUtils.getConnection();
//            ptm = conn.prepareStatement(sql);
//            ptm.setString(1, username);
//            rs = ptm.executeQuery();
//            while (rs.next()) {
//                list.add(new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
    public void addAccount(String userId, String password, String email, int role) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "insert into tbl_User(userId, password, role, email) values(?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, userId);
            ps.setString(2, password);
            ps.setInt(3, role);
            ps.setString(4, email);
            ps.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void addGoogleAccount(String userId, String email,String password, String fullName, int role) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "insert into tbl_User(userId, email, password, fullName, role) values(?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, userId);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, fullName);
            ps.setInt(5, role);
            ps.executeUpdate();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean checkExistAccount(String userId) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from tbl_User where userId=?";
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
