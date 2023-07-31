<%-- 
    Document   : NavBar
    Created on : May 30, 2023, 9:14:32 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/x-icon" href="images/favicon.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/NavBar.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

        <title>JSP Page</title>
    </head>
    <body>
        <div class="superNav border-bottom py-2 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 centerOnMobile">
                        <select  class="me-3 border-0 bg-light">
                            <option value="en-us">EN-US</option>
                        </select>
                        <span class="d-none d-lg-inline-block d-md-inline-block d-sm-inline-block d-xs-none me-3"><strong>thangnqse173445@fpt.edu.vn</strong></span>
                        <span class="me-3"><i class="fa-solid fa-phone me-1 text-warning"></i> <strong>1-800-123-1234</strong></span>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 d-none d-lg-block d-md-block-d-sm-block d-xs-none text-end">
                        <span class="me-3"><i class="fa-solid fa-truck text-muted me-1"></i><a class="text-muted" href="#">Shipping</a></span>
                        <span class="me-3"><i class="fa-solid fa-file  text-muted me-2"></i><a class="text-muted" href="#">Policy</a></span>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg bg-white sticky-top navbar-light p-3 shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="home"><i class="fa-solid fa-shop me-2"></i> <strong>TopGear</strong></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="mx-auto my-3 d-lg-none d-sm-block d-xs-block">
                    <div class="input-group">
                        <span class="border-warning input-group-text bg-warning text-white"><i class="fa-solid fa-magnifying-glass"></i></span>
                        <input type="text" class="form-control border-warning" style="color:#7a7a7a">
                        <button class="btn btn-warning text-white">Search</button>
                    </div>
                </div>
                <div class=" collapse navbar-collapse" id="navbarNavDropdown">
                    <form action="SearchProductController">
                        <div class="ms-auto d-none d-lg-block">
                            <div class="input-group">
                                <span class="border-warning input-group-text bg-warning text-white"><i class="fa-solid fa-magnifying-glass"></i></span>
                                <input type="text" name="search" class="form-control border-warning" style="color:#7a7a7a">
                                <button type="submit" class="btn btn-warning text-white">Search</button>
                            </div>
                        </div>
                    </form>
                    <ul class="navbar-nav ms-auto ">
                        <li class="nav-item">
                            <a class="nav-link mx-2 text-uppercase active" aria-current="page" href="#">Offers</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2 text-uppercase" href="#">Products</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2 text-uppercase" href="#">Catalog</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2 text-uppercase" href="#">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mx-2 text-uppercase" href="#">About</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav ms-auto ">
                        <li class="nav-item">
                            <a class="nav-link mx-2 text-uppercase" href="cart"><i class="fa-solid fa-cart-shopping me-1"></i> Cart</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link mx-2 text-uppercase dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-circle-user me-1"></i> 
                                <c:if test="${sessionScope.us!=null}">
                                    ${sessionScope.us}</a>
                                </c:if>
                                <c:if test="${sessionScope.us==null}">
                                Account</a>
                            </c:if>

                            <ul class="dropdown-menu">
                                <c:if test="${sessionScope.us==null}">
                                    <li><a class="dropdown-item" href="Signup.jsp">Sign Up</a></li>
                                    <li><a class="dropdown-item" href="LoginServlet">Login</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.us!=null}">
                                    <li><a class="dropdown-item" href="#">Welcome back, ${sessionScope.us}</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li>
                                        <a class="dropdown-item" href="LogoutServlet">Logout</a>
                                    </li>
                                </c:if>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>
