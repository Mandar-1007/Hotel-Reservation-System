
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="login.css" rel="stylesheet" type="text/css">
        <link href="background.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
        <style>
            
            
            
        </style>
    </head>
    <body>
        <%
            session.removeAttribute("user");
            session.invalidate();
        %>
        
        <%! String username="" , password="",checked="";%>
        <%  
            try
            {
                Cookie[] ck=request.getCookies();
                for(Cookie c:ck)
                {
                if(c.getName().equals("un"))
                    {
                    username=c.getValue();
                    }
                if(c.getName().equals("pwd"))
                    {  
                    password=c.getValue();
                    }
                if(c.getName().equals("checked"))
                    {
                    checked=c.getValue();
                    }
                }
            }
            catch (Exception e)
            {
                   
                    
            }

        %>
    <center>
        <jsp:include page="header.jsp"/>
       
        
        <div class="login">
        <div class="heading">
        <h2>Sign in</h2>
        
        
        <form action="logincontroller" method="post">
            
            
        <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" placeholder="Username" name="username" value="<%=username%>"/>
        </div>
            
        <br>
        <div class="input-group input-group-lg">
          <span class="input-group-addon"><i class="fa fa-lock"></i></span>
          <input type="password" class="form-control" placeholder="Password" name="password" id="password" value="<%=password%>"/>
        </div>
        <br>
        <input type="checkbox" onclick="myFunction()">Show Password
        <br>
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
        
      
                 <% 
                    if(checked==null || checked.equals(""))
                            {   
                 %>
        <label class="checkbox"><input type="checkbox" value="Remember me" id="Remember me" name="c1">Keep me signed in</label>
                 <%
                            } 
                 %>
                    
                <%
                    if(checked!=null && (!checked.equals("")))
                            {
                %> 
                 
        <label class="checkbox"><input type="checkbox" value="Remember me" id="Remember me" name="c1">Keep me signed in</label>
                <%
                            }
                %>
           
            
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button> 
        <br><button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>
<tr>
                        <td></td>
                        <td><br><br><a href="sendemail.jsp" style="padding:0px 0px;background-color:#40E0D0 white;color:blue;">Change/Forget Password</a></td>
                    </tr>
        </form>
    </center>
    </body>
</html>
