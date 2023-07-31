/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import database.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import entity.Mobile;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class MobileDAO {

    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<Mobile> getAllMobile() {
        List<Mobile> list = new ArrayList<>();
        String sql = "select * from tbl_Mobile";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
//                list.add(new Mobile(rs.getString("mobileId"), rs.getString("description"), rs.getDouble("price"), rs.getString("mobileName"), rs.getInt("yearOfProduction"), rs.getInt("quantity"), rs.getInt("notSale")));
                list.add(new Mobile(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteMobile(String mobileId) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DBUtils.getConnection();
            ps = conn.prepareStatement("delete from tbl_Mobile where mobileId=?");
            ps.setString(1, mobileId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addMobile(String mobileId, String description, double price, String mobileName, int yearOfProduction, int quantity, int notSale) {
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

    public Mobile getMobileByID(String mobileId) {
        String sql = "select * from tbl_Mobile where mobileId = ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, mobileId);
            rs = ptm.executeQuery();
            while (rs.next()) {
                return (new Mobile(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return null;

    }

    public void updateMobile(String mobileId, String description, double price, String mobileName, int yearOfProduction, int quantity, int notSale) {
        String sql = "update tbl_Mobile set description=?, price=?, mobileName=?, yearOfProduction=?, quantity=?, notSale=? where mobileId=?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, description);
            ptm.setDouble(2, price);
            ptm.setString(3, mobileName);
            ptm.setInt(4, yearOfProduction);
            ptm.setInt(5, quantity);
            ptm.setInt(6, notSale);
            ptm.setString(7, mobileId);
            ptm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Mobile> searchbymobileIdorName(String mobileId) {
        String sql = "select * from tbl_Mobile where mobileId like ? or mobileName like ?";
        List<Mobile> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + mobileId + "%");
            ptm.setString(2, "%" + mobileId + "%");
            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add((new Mobile(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getInt(7))));
            }
        } catch (Exception e) {
        }
        return list;

    }

    public List<Mobile> getProductInfo() {
        List<Mobile> list = new ArrayList<>();
        String sql = "select description, price, mobileName, yearOfProduction, quantity, notSale from tbl_Mobile";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
//                list.add(new Mobile(rs.getString("mobileId"), rs.getString("description"), rs.getDouble("price"), rs.getString("mobileName"), rs.getInt("yearOfProduction"), rs.getInt("quantity"), rs.getInt("notSale")));
                list.add(new Mobile(rs.getString(1), rs.getDouble(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public boolean checkId(String mobileId) {
        String sql = "select * from tbl_Mobile where mobileId = ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, mobileId);
            rs = ptm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;

    }

    public List<Mobile> searchProduct(String search) {
        String sql = "select * from tbl_Mobile where description like ? or mobileName like ?";
        List<Mobile> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + search + "%");
            ptm.setString(2, "%" + search + "%");
            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add((new Mobile(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getInt(7))));
            }
        } catch (Exception e) {
        }
        return list;

    }

}
