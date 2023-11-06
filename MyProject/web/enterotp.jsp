<%-- 
    Document   : enterotp
    Created on : 30 Jul, 2019, 6:22:43 PM
    Author     : MIMYMEMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="background.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <center>
            
            <div class="login">
        <div class="heading">
        <h2>Enter OTP</h2>
            
            <form action="checkotpcontroller" method="post">
                
                <div class="input-group input-group-lg">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" placeholder="Enter OTP" name="otp" value=""/>
                </div>  
                  
                <br><button class="btn btn-lg btn-primary btn-block" type="submit">Check OTP</button> 
        <br><button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>
                
            </form>
        </center>
    </body>
</html>
