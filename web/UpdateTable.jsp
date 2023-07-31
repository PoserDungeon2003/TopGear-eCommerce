<%-- 
    Document   : Signup
    Created on : May 17, 2023, 6:15:16 PM
    Author     : Admin
--%>

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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!--        <script src="js/ValidLogin.js"></script>-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
        <!--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="css/stylesheet.css">
        <!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>Update</title>
    </head>
    <body class="form">
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Update
                    </div>
                    <div class="panel-body">
                        <form class="col" method="POST" action="update">
                            <div class="row">
                                <label class="form-label">MobileID</label>
                                <input type="text" class="form-control"  name="MobileID" placeholder="MobileID" value="${mb.mobileId}" readonly>
                            </div>
                            <div class="row">
                                <label class="form-label">Description</label>
                                <input type="text" class="form-control"  name="Description" placeholder="Description" value="${mb.description}">
                            </div>
                            <div class="row">
                                <label class="form-label">Price</label>
                                <input type="text" class="form-control"  name="Price" placeholder="Price" value="${mb.price}">
                            </div>
                            <div class="row">
                                <label class="form-label">MobileName</label>
                                <input type="text" class="form-control"  name="MobileName" placeholder="MobileName" value="${mb.mobileName}">
                            </div>
                            <div class="row">
                                <label class="form-label">YearOfProduction</label>
                                <input type="text" class="form-control"  name="YearOfProduction" placeholder="YearOfProduction" value="${mb.yearOfProduction}">
                            </div>
                            <div class="row">
                                <label class="form-label">Quantity</label>
                                <input type="text" class="form-control"  name="Quantity" placeholder="Quantity" value="${mb.quantity}">
                            </div>
                            <div class="row">
                                <label class="form-label">NotSale</label>
                                <select class="form-select" aria-label="Default select example" name="NotSale">
                                    <option selected value="${mb.notSale}">Current status: ${mb.notSale}</option>
                                    <option value="0">0 - Sale</option>
                                    <option value="1">1 - Not Sale</option>
                                </select>
                                <!--                                <input type="text" class="form-control" name="NotSale" placeholder="NotSale" value="">-->

                            </div>
                            <div class="row">
                                <div class="grid text-center">
                                    <button class="btn btn-primary btn-lg btn-block" type="submit" style="font-size: 20px">Update</button>
                                </div>
                                <!--                                <div class="col-6">
                                                                    <button class="btn btn-primary" type="submit">Home</button>
                                                                </div>-->
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--        <script src="js/ValidLogin.js"></script>-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
