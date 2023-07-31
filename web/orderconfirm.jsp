<%-- 
    Document   : checkout
    Created on : Jul 10, 2023, 10:36:34 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>Checkout</title>
    </head>
    <jsp:include page='NavBar.jsp'/>
    <body>
        <section class="h-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-10 col-xl-8">
                        <div class="card" style="border-radius: 10px;">
                            <div class="card-header px-4 py-5">
                                <h5 class="text-muted mb-0">Thanks for your Order, <span style="color: #a8729a;">${sessionScope.us}</span>!</h5>
                            </div>
                            <div class="card-body p-4">
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <p class="lead fw-normal mb-0" style="color: #a8729a;">Receipt</p>
                                    <p class="small text-muted mb-0">Receipt Voucher : 1KAU9-84UIL</p>
                                </div>    
                                <c:forEach items="${cartList}" var="x">                      
                                    <div class="card shadow-0 border mb-4">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <img src="images/products/${x.mobileId}.jpg"
                                                         class="img-fluid" alt="image here">
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0">${x.description}</p>
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0 small">White</p>
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0 small">Capacity: 64GB</p>
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0 small">Qty: 1</p>
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0 small">$${x.price}</p>
                                                </div>
                                            </div>
                                            <hr class="mb-4" style="background-color: #e0e0e0; opacity: 1;">
                                            <div class="row d-flex align-items-center">
                                                <div class="col-md-2">
                                                    <p class="text-muted mb-0 small">Track Order</p>
                                                </div>
                                                <div class="col-md-10">
                                                    <div class="progress" style="height: 6px; border-radius: 16px;">
                                                        <div class="progress-bar" role="progressbar"
                                                             style="width: 65%; border-radius: 16px; background-color: #a8729a;" aria-valuenow="65"
                                                             aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <div class="d-flex justify-content-around mb-1">
                                                        <p class="text-muted mt-1 mb-0 small ms-xl-5">Out for delivary</p>
                                                        <p class="text-muted mt-1 mb-0 small ms-xl-5">Delivered</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>          
                                <div class="d-flex justify-content-between pt-2">
                                    <p class="fw-bold mb-0">Order Details</p>
                                    <p class="text-muted mb-0"><span class="fw-bold me-4">Total</span> $${total}</p>
                                </div>

                                <!--                                <div class="d-flex justify-content-between pt-2">
                                                                    <p class="text-muted mb-0">Invoice Number : 788152</p>
                                                                    <p class="text-muted mb-0"><span class="fw-bold me-4">Discount</span> $19.00</p>
                                                                </div>-->

                                <div class="d-flex justify-content-between">
                                    <p class="text-muted mb-0">Invoice Date : ${date}</p>
                                    <!--                                    <p class="text-muted mb-0"><span class="fw-bold me-4">GST 18%</span> 123</p>-->
                                </div>

                                <div class="d-flex justify-content-between mb-5">
                                    <p class="text-muted mb-0">Recepits Voucher : </p>
                                    <p class="text-muted mb-0"><span class="fw-bold me-4">Delivery Charges</span> Free</p>
                                </div>
                            </div>
                            <div class="card-footer border-0 px-4 py-5"
                                 style="background-color: #a8729a; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                <h5 class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">Total
                                    paid: <span class="h2 mb-0 ms-2">$${total}</span></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
