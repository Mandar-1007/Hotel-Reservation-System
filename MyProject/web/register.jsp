
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="login.css" rel="stylesheet" type="text/css">
        <link href="background.css" rel="stylesheet" type="text/css"/>
        <title></title>
    </head>
    <script>
        function myfunction(element)
        {
           var url="ValidateServlet?id="+element.id+"&val="+element.value;
           
           xhttp=new XMLHttpRequest();
           xhttp.onreadystatechange=function()
           {
               if(xhttp.readyState==4)
               {
                   document.getElementById("msg"+element.id).innerHTML=xhttp.responseText;
               }
           };
            
           xhttp.open("Get",url);
           xhttp.send();
        }
    </script>
      <jsp:include page="header.jsp"/>
    <body>
        
    <center>
      
        <div class="login">
        <div class="heading">
        <h2>Sign up</h2>
        
        
        
        <form action="registercontroller" method="post">
        <div class="input-group input-group-lg">
           <span class="input-group-addon"><i class="fa fa-user"></i></span>
           <input type="text" class="form-control" placeholder="Username" id="username" name="username" onkeyup="myfunction(this)" value=""/><span id="msgusername" style="color:red"></span>
        </div>
         
            <br>
        <div class="input-group input-group-lg">
           <span class="input-group-addon"><i class="fa fa-user"></i></span>
           <input type="text" class="form-control" placeholder="Email" id="email" name="email" onkeyup="myfunction(this)" value=""/><span id="msgemail" style="color:red"></span>
        </div>     
            
            <br>
        <div class="input-group input-group-lg">
          <span class="input-group-addon"><i class="fa fa-lock"></i></span>
          <input type="password" class="form-control" placeholder="Password" name="password" id="password" value=""/>
        </div>
            
            <br>
        <input type="checkbox" onclick="getFunction()">Show Password
        <br>
        <script>
            function getFunction() {
            var x = document.getElementById("password");
            if (x.type === "password") {
            x.type = "text";
            } else {
            x.type = "password";
            }
                    }
            </script>
            
               
            <br><button class="btn btn-lg btn-primary btn-block" type="submit">Register</button> 
        <br><button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>
                       
        </form>
    </center>
    </body>
</html>
