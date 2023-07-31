<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : Signup
    Created on : May 17, 2023, 6:15:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                <script src="js/ValidLogin.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="stylesheet" href="css/stylesheet.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <title>Register</title>
    </head>
    <body class="form">
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Register
                    </div>
                    <div class="panel-body">
                        <h5><i class="fas fa-home"></i><a href="home" class="link-primary"> Back To Home</a></h5>
                        <form class="col" method="POST" action="SignupServlet">
                            <div class="row">
                                <label for="validationDefault01" class="form-label" >Your Full Name</label>
                                <input type="text" class="form-control" id="validationDefault01" name="FullName" required placeholder="Your Full Name">
                            </div>
                            <div class="row">
                                <label for="validationDefaultUsername" class="form-label">Username</label>
                                                                    <span class="input-group-text" id="inputGroupPrepend2">@</span>
                                <input type="text" class="form-control" id="validationDefaultUsername" name="Username"  aria-describedby="inputGroupPrepend2" required placeholder="Username">
                            </div>
                            <div class="row">
                                <label for="validationDefault03" class="form-label">Email</label>
                                <input type="email" class="form-control" id="validationDefault03" name="Email" required placeholder="Email">
                            </div>
                            <div class="row">
                                <label for="validationDefault03" class="form-label">Phone Number</label>
                                <input type="tel" class="form-control" id="validationDefault03" name="Phone" required placeholder="Phone Number">
                            </div>
                                                        <div class="row">
                                                            <label for="validationDefault04" class="form-label">State</label>
                                                            <select class="form-select" id="validationDefault04" required>
                                                                <option selected disabled value="">Choose...</option>
                                                                <option>...</option>
                                                            </select>
                                                        </div>
                            <div class="row">
                                <label for="validationDefault05" class="form-label">Password</label>
                                <input type="password" class="form-control" id="validationDefault05" name="Password" required placeholder="Password">
                            </div>
                            <div class="row">
                                <label for="validationDefault03" class="form-label">Confirm Password</label>
                                <input type="password" class="form-control" id="validationDefault03" name="ConfirmPassword" required placeholder="Confirm Password">
                            </div>
                            <div class="row">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                                    <label class="form-check-label" for="invalidCheck2" style="font-size: 18px">
                                        Agree to terms and conditions
                                    </label>
                                </div>
                            </div>
                            <h5>Already have account? Click <a href="Login.jsp" class="link-primary">Here</a></h5>
                            <div class="row">                                
                                <div class="grid text-center">
                                    <button class="btn btn-primary btn-lg btn-block" type="submit" style="font-size: 18px">Register</button>
                                </div>
                                                                <div class="col-6">
                                                                    <button class="btn btn-primary" type="submit">Home</button>
                                                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
                <script src="js/ValidLogin.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>-->

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>TopGear</title>
        <link rel="icon" type="image/x-icon" href="images/Logo_TopGear-removebg-preview.png">
        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Font-->
        <link rel="stylesheet" type="text/css" href="colorlib-regform-33/css/opensans-font.css">
        <link rel="stylesheet" type="text/css" href="colorlib-regform-33/fonts/line-awesome/css/line-awesome.min.css">
        <!-- Jquery -->
        <link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
        <!-- Main Style Css -->
        <link rel="stylesheet" href="colorlib-regform-33/css/style.css"/>
    </head>
    <body class="form-v7">
        <div class="page-content">
            <div class="form-v7-content">
                <div class="form-left">
                    <img src="images/reg-form-img.png" alt="form">
                    <p class="text-1">Sign Up</p>
                    <p class="text-2">Privacy policy & Term of service</p>
                </div>
                <form class="form-detail" action="SignupServlet" method="post">
                    <div class="form-row">
                        <label for="username">USERNAME</label>
                        <input type="text" name="username" id="username" class="input-text">
                    </div>
                    <div class="form-row">
                        <label for="your_email">E-MAIL</label>
                        <input type="text" name="your_email" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
                    </div>
                    <div class="form-row">
                        <label for="password">PASSWORD</label>
                        <input type="password" name="password" id="password" class="input-text" required>
                    </div>
                    <div class="form-row">
                        <label for="comfirm_password">CONFIRM PASSWORD</label>
                        <input type="password" name="comfirm_password" id="comfirm_password" class="input-text" required>
                    </div>
                    <div class="form-row">
                        <b style="color: red;">${error}</b>
                    </div>
                    <div class="form-row-last">
                        <input type="submit" name="register" class="register" value="Register">
                        <p>Or<a href="LoginServlet">Sign in</a></p>
                    </div>
                    <div class="form-row-last" hidden>
                        <input type="number" name="role" class="register" value="0">
                    </div>
                </form>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
        <script>
            // just for the demos, avoids form submit
            jQuery.validator.setDefaults({
                debug: true,
                success: function (label) {
                    label.attr('id', 'valid');
                },
            });
            $("#myform").validate({
                rules: {
                    your_email: {
                        required: true,
                        email: true
                    },
                    password: "required",
                    comfirm_password: {
                        equalTo: "#password"
                    }
                },
                messages: {
                    username: {
                        required: "Please enter an username"
                    },
                    your_email: {
                        required: "Please provide an email"
                    },
                    password: {
                        required: "Please provide a password"
                    },
                    comfirm_password: {
                        required: "Please provide a password",
                        equalTo: "Wrong Password"
                    }
                }
            });
        </script>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
