<%-- 
    Document   : changepassword
    Created on : 30 Jul, 2019, 6:28:39 PM
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
        
        <div class="login">
        <div class="heading">
            <center><h2>Reset Password</h2></center>
        
        <form action="changepasswordcontroller" method="post">
            
            <div class="input-group input-group-lg">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="password" class="form-control" placeholder="Enter new password" name="password" id="password" value=""/>
            </div>    
            
            <input type="checkbox" onclick="myFunction()">Show Password
            
            <script>
            function myFunction() {
            var x = document.getElementById("password");
            if (x.type === "password") {
            x.type = "text";
            } else {
            x.type = "password";
            }
                    }
            </script>
            <br>
            <br>
            <div class="input-group input-group-lg">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="password" class="form-control" placeholder="Confirm new password" name="cpassword" id="cpassword" value=""/>
            </div>  
            
            
            <input type="checkbox" onclick="getFunction()">Show Password
            
            <script>
            function getFunction() {
            var x = document.getElementById("cpassword");
            if (x.type === "password") {
            x.type = "text";
            } else {
            x.type = "password";
            }
                    }
            </script>
            <br>
            <br><button class="btn btn-lg btn-primary btn-block" type="submit">Reset Password</button> 
            <br><button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>
            
        </form>
    </body>
</html>
