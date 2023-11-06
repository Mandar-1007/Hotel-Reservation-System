

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="login.css" rel="stylesheet" type="text/css">
        <link href="background.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <script>

        </script>
    </head>
    <body>
        <form name="myForm">
            <jsp:include page="header.jsp"></jsp:include> 
            <br>
            <br>
            <center><h2>Make your search convenient</h2></center> 
            <div class="login">
        <div class="heading">
        
        
        
        <form action="detailscontroller" method="post">
            
        <tr>   
            <td>

        <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            Check in date: <input type="date" class="form-control" placeholder="" name="checkin" id="checkin" value="" />
        </div>

            </td>
        <br>
            <td>
        <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            Check out date: <input type="date" class="form-control" placeholder="" name="checkout" value="" />
        </div>
            </td>
            <br>
            <td>  
        <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
        Location: <input type="text" class="form-control" placeholder="" name="location" value=""/>
        </div>
            </td>
            <br>
            <td>
                
                <button class="btn btn-lg btn-primary btn-block" type="submit"/>Submit</button> 
                
            </td>
        </tr>
       
        </form>
    </body>
</html>
