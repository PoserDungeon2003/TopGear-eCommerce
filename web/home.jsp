<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <!--        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">-->
        <!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <!--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
        <script src="js/ConfirmMessage.js"></script>
        <script src="js/ShowPassword.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
        <!--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
        <!--                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="css/NavBar.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">-->
        <!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">-->
        <!--        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
        <title>TopGear</title>
        <!--                <link rel="stylesheet" href="simple-product-card-ui-design-using-htmlcss/dist/style.css">-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--        <meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <!--                <link rel="stylesheet" href="css/ProductCard.scss">
                        <script src="js/ProductCard.js"></script>-->

    </head>
    <jsp:include page='NavBar.jsp'/>
    <body>

        <section style="background-color: #eee;">
            <!--                <div class="alert alert-success" role="alert">
                            </div>-->
            
            <div class="container py-5">
                <div class="row">
                    <c:forEach items="${listInfo}" var="p">
                        <div class="col-md-12 col-lg-4 mb-4 mb-lg-0">
                            <div class="card">
                                <div class="d-flex justify-content-between p-3">
                                    <p class="lead mb-0">Today's Combo Offer</p>
                                    <div
                                        class="bg-info rounded-circle d-flex align-items-center justify-content-center shadow-1-strong"
                                        style="width: 35px; height: 35px;">
                                        <p class="text-white mb-0 small">HOT</p>
                                    </div>
                                </div>
                                <img  src="images/products/${p.mobileId}.jpg"
                                      class="card-img-top" alt="Laptop" />
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <p class="small"><a href="#!" class="text-muted">Laptops</a></p>
                                        <p class="small text-danger"><s>$1099</s></p>
                                    </div>

                                    <div class="d-flex justify-content-between mb-3">
                                        <h5 class="mb-0">${p.description}</h5>
                                        <h5 class="text-dark mb-0">$${p.price}</h5>
                                    </div>


                                    <div class="d-flex justify-content-between mb-2">
                                        <p class="text-muted mb-0">Available: <span class="fw-bold">${p.quantity}</span></p>
                                        <div class="ms-auto text-warning">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="d-flex flex-row">
                                        <button type="button" class="btn btn-primary flex-fill me-1" data-mdb-ripple-color="dark">
                                            Learn more
                                        </button>
                                        <form action="cart" method="POST">
                                            <button type="submit"class="btn btn-success flex-fill ms-1" name="submit" value="action"><i class="fa-solid fa-cart-shopping me-1"></i>Add To Cart</button>
                                            <input hidden type="text" value="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Products/4.webp" name="image">
                                            <input hidden type="text" value="${p.mobileId}" name="id">
                                            <input hidden type="text" value="${p.description}" name="description">
                                            <input hidden type="number" value="${p.price}" name="price">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!--                    <div class="col-md-6 col-lg-4 mb-4 mb-md-0">
                                            <div class="card">
                                                <div class="d-flex justify-content-between p-3">
                                                    <p class="lead mb-0">Today's Combo Offer</p>
                                                    <div
                                                        class="bg-info rounded-circle d-flex align-items-center justify-content-center shadow-1-strong"
                                                        style="width: 35px; height: 35px;">
                                                        <p class="text-white mb-0 small">x2</p>
                                                    </div>
                                                </div>
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Products/7.webp"
                                                     class="card-img-top" alt="Laptop" />
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between">
                                                        <p class="small"><a href="#!" class="text-muted">Laptops</a></p>
                                                        <p class="small text-danger"><s>$1199</s></p>
                                                    </div>
                    
                                                    <div class="d-flex justify-content-between mb-3">
                                                        <h5 class="mb-0">HP Envy</h5>
                                                        <h5 class="text-dark mb-0">$1099</h5>
                                                    </div>
                    
                                                    <div class="d-flex justify-content-between mb-2">
                                                        <p class="text-muted mb-0">Available: <span class="fw-bold">7</span></p>
                                                        <div class="ms-auto text-warning">
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="far fa-star"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-4 mb-4 mb-md-0">
                                            <div class="card">
                                                <div class="d-flex justify-content-between p-3">
                                                    <p class="lead mb-0">Today's Combo Offer</p>
                                                    <div
                                                        class="bg-info rounded-circle d-flex align-items-center justify-content-center shadow-1-strong"
                                                        style="width: 35px; height: 35px;">
                                                        <p class="text-white mb-0 small">x3</p>
                                                    </div>
                                                </div>
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Products/5.webp"
                                                     class="card-img-top" alt="Gaming Laptop" />
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between">
                                                        <p class="small"><a href="#!" class="text-muted">Laptops</a></p>
                                                        <p class="small text-danger"><s>$1399</s></p>
                                                    </div>
                    
                                                    <div class="d-flex justify-content-between mb-3">
                                                        <h5 class="mb-0">Toshiba B77</h5>
                                                        <h5 class="text-dark mb-0">$1299</h5>
                                                    </div>
                    
                                                    <div class="d-flex justify-content-between mb-2">
                                                        <p class="text-muted mb-0">Available: <span class="fw-bold">5</span></p>
                                                        <div class="ms-auto text-warning">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star-half-alt"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>-->
                </div>
            </div>
        </section>


        <div class="grid text-center">
            <table>
                <tr>
                    <td>

                    </td>
                </tr>
                <!--                                <tr>
                                                    <td>
                                                        <div class="card" style="width: 18rem;">
                                                            <img src="..." class="card-img-top" alt="...">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <i class="fas fa-cart-plus"></i>
                                                                <button type="submit" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="card" style="width: 18rem;">
                                                            <img src="..." class="card-img-top" alt="...">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <i class="fas fa-cart-plus"></i>
                                                                <button type="submit" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="card" style="width: 18rem;">
                                                            <img src="..." class="card-img-top" alt="...">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <i class="fas fa-cart-plus"></i>
                                                                <button type="submit" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="card" style="width: 18rem;">
                                                            <img src="..." class="card-img-top" alt="...">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <i class="fas fa-cart-plus"></i>
                                                                <button type="submit" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="card" style="width: 18rem;">
                                                            <img src="..." class="card-img-top" alt="...">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <i class="fas fa-cart-plus"></i>
                                                                <button type="submit" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="card" style="width: 18rem;">
                                                            <img src="..." class="card-img-top" alt="...">
                                                            <div class="card-body">
                                                                <h5 class="card-title">Card title</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <i class="fas fa-cart-plus"></i>
                                                                <button type="submit" class="btn btn-primary">Add to Cart</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="card" style="width: 18rem;">
                                                            <img src="https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-trang-200x200.jpg" class="card-img-top" alt="...">
                                                            <div class="card-body">
                                                                <h5 class="card-title">iPhone 11</h5>
                                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                                <form action="ShoppingServlet" method="POST">
                                                                    <i class="fas fa-cart-plus"></i>
                                                                    <input type="checkbox" value="iPhone 11" checked hidden>
                                                                    <button type="submit" class="btn btn-primary" value="Add to Cart" name="action">Add to Cart</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </td>
                                
                                                </tr>-->

            </table>
        </div>
        <script  src="simple-product-card-ui-design-using-htmlcss/dist/script.js"></script>

        <!--        <nav>
                    <ul>
                        <li>
                            <a href="http://localhost:8080/Lab1_SE173445/Login.jsp"> Login </a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/Lab1_SE173445/ColorServlet.jsp"> ColorServlet </a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/Lab1_SE173445/ProductServlet.jsp"> ProductServlet </a>
                        </li>
                    </ul>
                </nav>-->
    </body>
</html>
