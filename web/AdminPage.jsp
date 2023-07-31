<%-- 
    Document   : AdminPage
    Created on : May 17, 2023, 10:50:01 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBUtils"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/ConfirmMessage.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="js/ShowPassword.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
        <!--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="css/stylesheet.css">
        <!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body class="table">
        <div>
            <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="admin">Store Managing System</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="admin">Home</a>
                            </li>
                            <!--        <li class="nav-item">
                                      <a class="nav-link" href="#">Link</a>
                                    </li>-->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Actions
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="AddNewMobile.jsp">Add new Mobile</a></li>
                                    <li><a class="dropdown-item" href="#">Add Something</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>
                            <!--        <li class="nav-item">
                                      <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                                    </li>-->
                        </ul>
                        <form class="d-flex" action="SearchPage" method="POST">
                            <input class="form-control me-2" type="search" placeholder="Search by MobileID or Name" aria-label="Search" name="SearchMobile">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
        <h1 style="font-size: 50px; color: white" class="">
            Welcome Back
            <p class="text-success">${sessionScope.us}</p>
        </h1>
<!--        <div class="container text-center">
            <form action="AddNewMobile.jsp">
                <button type="submit" class="btn btn-outline-primary" style="font-size: 25px">Add new Mobile</button>
            </form>
        </div>-->
        <div hidden class="alert alert-danger" role="alert">
            A simple danger alert—check it out!
        </div>

        <div class="container-md text-center">

            <div class="table-responsive">
                <table class="table table-dark table-hover table-striped table-bordered" ac>
                    <thead class="table-dark">
                    <th scope="col">MobileId</th>
                    <th scope="col">Description</th>
                    <th scope="col">Price</th>
                    <th scope="col">MobileName</th>
                    <th scope="col">YearOfProduction</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">NotSale</th>
                    <th scope="col">Update</th>
                    <th scope="col">Delete</th>
                    </thead>
                    <tbody>
                        
                        <tr>
                            <c:forEach items="${listS}" var="x">
                                <td>${x.mobileId}</td>
                                <td>${x.description}</td>
                                <td>${x.price}</td>
                                <td>${x.mobileName}</td>
                                <td>${x.yearOfProduction}</td>
                                <td>${x.quantity}</td>
                                <td>${x.notSale}</td>
                            <td>
                                <form action="update">
                                    <input hidden="" class="form-control" type="text" name="update-id" value="${x.mobileId}" readonly>
<!--                                    <a href="update?sid="></a>-->
                                    <button type="submit" class="btn btn-primary" onclick="clicked(event)">UPDATE</button>
                                </form>

                            </td>
                            <td>
                                <form action="delete">
                                    <input hidden="" class="form-control" type="text" name="delete-id" value="${x.mobileId}" readonly>
                                    <button type="submit" class="btn btn-danger" onclick="clicked(event)">DELETE</button>
                                </form>                                
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>


        <script src="js/ShowPassword.js"></script>
        <script src="js/ConfirmMessage.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
