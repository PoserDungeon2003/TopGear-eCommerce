<%-- 
    Document   : test
    Created on : May 29, 2023, 2:03:59 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
    
        <h1>Hello World!</h1>
        <h1>${sessionScope.us}</h1>
        <h1>${sessionScope.pw}</h1>
        <h1>${sessionScope.cart_list}</h1>
        <c:forEach var="x" items="${sessionScope.cart_list}">
            <h1>${x.description}</h1>
        </c:forEach>
            <c:forEach var="x" items="${sessionScope.cart_list}" varStatus="loop">
            <h1>${loop.index +1}</h1>
            <h1>${x.description}</h1>
        </c:forEach>
        <h1></h1>
    </body>
</html>
