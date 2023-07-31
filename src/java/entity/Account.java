/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Admin
 */
public class Account {
    private String userId;
    private String password;
    private String fullName;
    private String email;
    private int role;

    public Account(int role) {
        this.role = role;
    }

    public Account() {
    }

    public Account(String userId, String password, String fullName, String email, int role) {
        this.userId = userId;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.role = role;
    }
    

    public Account(String userId, String password, String fullName, int role) {
        this.userId = userId;
        this.password = password;
        this.fullName = fullName;
        this.role = role;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "userId=" + userId + ", password=" + password + ", fullName=" + fullName + ", role=" + role + '}';
    }
    
}
