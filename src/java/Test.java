
import bean.AccountDAO;
import bean.CartDTO;
import bean.MobileDAO;
import bean.RegistrationDAO;
import entity.Account;
import entity.Cart;
import entity.Mobile;
import java.sql.SQLException;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;
import javax.naming.NamingException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Admin
 */
public class Test {

    public static void main(String[] args) throws SQLException, NamingException {
        String mobileId = "M002";
        MobileDAO dao = new MobileDAO();
        boolean check = dao.checkId(mobileId);
        Mobile m = new Mobile();
        m = dao.getMobileByID(mobileId);
        double price = m.getPrice();
        System.out.println(price);
//        MobileDAO dao = new MobileDAO();
//        List<Mobile> list = new ArrayList<>();
//        Mobile m = new Mobile("9", "9", 12, "1234");
//        Mobile n = new Mobile("8", "0", 7, "789");
//        List<Mobile> item = dao.searchbymobileIdorName("M001");
//        list.add(m);
//        list.add(n);
//        list.add(m);
//        System.out.println(list);
//        for (Mobile mobile : list) {
//            System.out.println(mobile);
//        }
//        String image = "1";
//        String description = "something";
//        String price = "999";
//        String quantity = "3";
//        CartDTO dto = new CartDTO();
//        List<Cart> list = dto.getCart(image, description, price, quantity);
//        for (Cart cart : list) {
//            System.out.println(cart);
//        }
//        AccountDAO dao = new AccountDAO();
//        MobileDAO mobile = new MobileDAO();
//        List<Mobile> listMobile = mobile.getProductInfo();
//        List<Account> list= dao.getAllAccount();
//        for (Mobile a : listMobile) {
//            System.out.println(a);
//        }
//        String username = "U001";
//        RegistrationDAO dao = new RegistrationDAO();
//        boolean result = dao.checkRole(username);
//        System.out.println(result);

//        RegistrationDAO r = new RegistrationDAO();
//        List<Account> list = r.getAllAccount(username);
//        for (Account a : list) {
//            System.out.println(a.getRole());
//        }
    }
}
