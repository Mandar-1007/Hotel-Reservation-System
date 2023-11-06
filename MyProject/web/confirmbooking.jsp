<%-- 
    Document   : final
    Created on : 2 Aug, 2019, 7:35:53 PM
    Author     : MIMYMEMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="header.jsp" rel="stylesheet" type="text/css"/>
        <link href="background.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
    <center>
        <form action="confirmbookingcontroller" method="post">
        <div class="login">
        <div class="heading">
            <br>
           <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" id="hotelname" class="form-control" placeholder="Your Hotel" name="hotelname" value="${hotelname.hn}" />
            </div>
                <br>
            <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="date" id="checkin" class="form-control" placeholder="Checkin date" name="checkin" value="${details.checkin}" />
            </div>
            <br>
            <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="date" id="checkout" class="form-control" placeholder="Checkout date" name="checkout" value="${details.checkout}" />
            </div>
            <br>
            <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" id="fullname" class="form-control" placeholder="Enter full name" name="fullname" value=""/>
            </div>
            <br>
            <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" id="email" class="form-control" placeholder="Your e-mail id" name="email" value="${user.email}" />
            </div>
            <br>
            <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" id="mobile" class="form-control" placeholder="Enter mobile no" name="mobile" value="" />
            </div>
            <br>
            <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" id="address1" class="form-control" placeholder="Address line 1" name="address1" value="" />
            </div>
            <br>
            <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" id="address2" class="form-control" placeholder="Address line 2" name="address2" value="" />
            </div>
            <br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Confirm Booking</button> 
            
            </form>
    </center>
    </body>
</html>
