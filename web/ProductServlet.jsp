<%-- 
    Document   : ProductServlet
    Created on : May 14, 2023, 9:08:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <title>ProductServlet</title>
    </head>
    <body>
        <form action="index.html" class="home_login_product">
            <input type="submit" value="Home" class="home_login_product"/> 
        </form>
        <h1>Get Parameter Values Demo</h1>
        <div>
            <form action="ProductServlet" method="POST">
                <input type="checkbox" name="Products" value="Servlet & JSP"/>Servlet & JSP <br>
                <input type="checkbox" name="Products" value="Struct & JSF"/>Struct & JSF <br>
                <input type="checkbox" name="Products" value="EJB"/>EJB <br>
                <input type="checkbox" name="Products" value="XMJ" />XMJ <br>
                <input type="checkbox" name="Products" value="Java Web Services" />Java Web Services <br>
                <div class="choose">
                    <button type="submit" class="choose"</button>Choose<br>
                </div>
            </form>
        </div>

    </body>
</html>

