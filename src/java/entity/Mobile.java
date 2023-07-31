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
public class Mobile {
    private String mobileId;
    private String description;
    private double price;
    private String mobileName;
    private int yearOfProduction;
    private int quantity;
    private int notSale;

    public Mobile(String mobileId, String description, double price, String mobileName) {
        this.mobileId = mobileId;
        this.description = description;
        this.price = price;
        this.mobileName = mobileName;
    }

    public Mobile() {
    }

    public Mobile(String description, double price, String mobileName, int yearOfProduction, int quantity, int notSale) {
        this.description = description;
        this.price = price;
        this.mobileName = mobileName;
        this.yearOfProduction = yearOfProduction;
        this.quantity = quantity;
        this.notSale = notSale;
    }

    public Mobile(String mobileId, String description, double price, String mobileName, int yearOfProduction, int quantity, int notSale) {
        this.mobileId = mobileId;
        this.description = description;
        this.price = price;
        this.mobileName = mobileName;
        this.yearOfProduction = yearOfProduction;
        this.quantity = quantity;
        this.notSale = notSale;
    }

    public String getMobileId() {
        return mobileId;
    }

    public void setMobileId(String mobileId) {
        this.mobileId = mobileId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getMobileName() {
        return mobileName;
    }

    public void setMobileName(String mobileName) {
        this.mobileName = mobileName;
    }

    public int getYearOfProduction() {
        return yearOfProduction;
    }

    public void setYearOfProduction(int yearOfProduction) {
        this.yearOfProduction = yearOfProduction;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getNotSale() {
        return notSale;
    }

    public void setNotSale(int notSale) {
        this.notSale = notSale;
    }

    @Override
    public String toString() {
        return "Mobile{" + "mobileId=" + mobileId + ", description=" + description + ", price=" + price + ", mobileName=" + mobileName + ", yearOfProduction=" + yearOfProduction + ", quantity=" + quantity + ", notSale=" + notSale + '}';
    }

}