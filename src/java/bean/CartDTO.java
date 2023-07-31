/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Cart;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class CartDTO {
    public List<Cart> getCart(String image, String description, String price, String quantity){
        List<Cart> list = new ArrayList<>();
        Cart c = new Cart(image, description, price, quantity);
        list.add(c);
        return list;
    }
}
