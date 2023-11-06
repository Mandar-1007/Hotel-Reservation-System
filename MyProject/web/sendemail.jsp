<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <link href="header.css" rel="stylesheet" type="text/css"/>
        <link href="background.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
   <body>
    <center>
        <jsp:include page="header.jsp"/>
        <form action="sendotpcontroller" method="post">
        
        <div class="login">
        <div class="heading">
        <h2>Change Password</h2>    
            
        <br>    
        <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" placeholder="Enter your registered e-mail address" name="email" value=""/>
        </div>    
            
        <br><button class="btn btn-lg btn-primary btn-block" type="submit">Send OTP</button> 
        <br><button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>
            
        </form>
    </center>
    </body>
</html>
