<%-- 
    Document   : cart
    Created on : May 31, 2023, 7:34:50 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/ConfirmMessage.js"></script>
        <script src="js/ShowPassword.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <!--        <link rel="stylesheet" href="css/NavBar.css">-->
        <!--        <link rel="stylesheet" href="css/Cart.css">-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <title>Cart</title>
    </head>
    <jsp:include page='NavBar.jsp'/>
    <body>
        <section class="h-100" style="background-color: #eee;">
            <div class="container h-100 py-5">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-10">

                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <h3 class="fw-normal mb-0 text-black">Shopping Cart</h3>
                            <div>
                                <p class="mb-0"><span class="text-muted">Sort by:</span> <a href="#!" class="text-body">price <i
                                            class="fas fa-angle-down mt-1"></i></a></p>
                            </div>
                        </div>
                        <form action="Checkout" method="post">
                            <c:forEach var="x" items="${cartList}">
                                <div class="card rounded-3 mb-4">
                                    <div class="card-body p-4">
                                        <div class="row d-flex justify-content-between align-items-center">
                                            <div class="col-md-2 col-lg-2 col-xl-2">
                                                <img
                                                    src="images/products/${x.mobileId}.jpg"
                                                    class="img-fluid rounded-3" alt="image here">
                                            </div>
                                            <div class="col-md-3 col-lg-3 col-xl-3">
                                                <p class="lead fw-normal mb-2">${x.description}</p>
                                            </div>
                                            <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
<!--                                                <button class="btn btn-link px-2"
                                                        onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                    <i class="fas fa-minus"></i>
                                                </button>-->
                                                <input id="form1" min="1" name="quantity" value="1" type="number"
                                                       class="form-control form-control-sm" />
<!--                                                <button class="btn btn-link px-2" 
                                                        onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                    <i class="fas fa-plus"></i>
                                                </button>-->
                                            </div>
                                            <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                                <h5 class="mb-0">$${x.price}</h5>
                                            </div>
                                            <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                                <a href="delcart?id=${x.mobileId}" class="text-danger"><i class="fas fa-trash fa-lg"></i></a>
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="card">
                                <div class="card-body">
                                    <button type="submit" class="btn btn-warning btn-block btn-lg">Proceed to Pay</button>
                                </div>
                            </div>
                        </form>
                        <c:set var="test" value="${quantity}"></c:set>
                            <div class="card mb-4">
                                <div class="card-body p-4 d-flex flex-row">
                                    <div class="form-outline flex-fill">
                                        <input type="text" id="form1" class="form-control form-control-lg" />
                                        <label class="form-label" for="form1">Discound code</label>
                                    </div>
                                    <button type="button" class="btn btn-outline-warning btn-lg ms-3">Apply</button>
                                </div>
                            </div>
                            <div class="card mb-4">
                                <div class="card-body p-4 d-flex flex-row">
                                    <div class="form-outline flex-fill">
                                        <input type="number" id="form1" class="form-control form-control-lg" value="${total}" readonly/>
                                    <label class="form-label" for="form1">Total</label>
                                </div>
                                <!--                                <button type="button" class="btn btn-outline-warning btn-lg ms-3">Apply</button>-->
                            </div>
                        </div>
<!--                        <div class="card">
                            <div class="card-body">
                                <form action="checkout">
                                    <button type="submit" class="btn btn-warning btn-block btn-lg">Proceed to Pay</button>
                                </form>
                            </div>
                        </div>-->
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
