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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="css/stylesheet.css">
        <!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <title>Add new Mobile</title>
    </head>
    <body class="form">
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Add new Mobile
                    </div>
                    <div class="panel-body">
                        <h5><i class="fas fa-home"></i><a href="admin" class="link-primary"> Back To Admin Page</a></h5>
                        <form class="col" method="POST" action="AddMobile">
                            <div class="row">
                                <label for="validationDefault01" class="form-label" >MobileID</label>
                                <input type="text" class="form-control" id="validationDefault01" name="MobileID" required placeholder="MobileID">
                            </div>
                            <div class="row">
                                <label for="validationDefaultUsername" class="form-label">Description</label>
                                <!--                                    <span class="input-group-text" id="inputGroupPrepend2">@</span>-->
                                <input type="text" class="form-control" id="validationDefaultUsername" name="Description"  aria-describedby="inputGroupPrepend2" required placeholder="Description">
                            </div>
                            <div class="row">
                                <label for="validationDefault03" class="form-label">Price</label>
                                <input type="number" class="form-control" id="validationDefault03" step="any" name="Price" required placeholder="Price">
                            </div>
                            <div class="row">
                                <label for="validationDefault03" class="form-label">MobileName</label>
                                <input type="text" class="form-control" id="validationDefault03" name="MobileName" required placeholder="MobileName">
                            </div>
                            <!--                            <div class="row">
                                                            <label for="validationDefault04" class="form-label">State</label>
                                                            <select class="form-select" id="validationDefault04" required>
                                                                <option selected disabled value="">Choose...</option>
                                                                <option>...</option>
                                                            </select>
                                                        </div>-->
                            <div class="row">
                                <label for="validationDefault05" class="form-label">YearOfProduction</label>
                                <input type="number" class="form-control" id="validationDefault05" name="YearOfProduction" required placeholder="YearOfProduction">
                            </div>
                            <div class="row">
                                <label for="validationDefault03" class="form-label">Quantity</label>
                                <input type="number" class="form-control" id="validationDefault03" name="Quantity" required placeholder="Quantity">
                            </div>
                            <div class="row">
                                <label for="validationDefault03" class="form-label">NotSale</label>
<!--                                <input type="" class="form-control" id="validationDefault03" name="NotSale" required placeholder="NotSale">-->
                                <select class="form-select" aria-label="Default select example" name="NotSale">
                                    <option selected">Choose...</option>
                                    <option value="0">0 - Sale</option>
                                    <option value="1">1 - Not Sale</option>
                                </select>
                            </div>
                            <div class="row">                                
                                <div class="grid text-center">
                                    <button class="btn btn-primary text-center" type="submit" style="font-size: 18px">Add</button>
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
