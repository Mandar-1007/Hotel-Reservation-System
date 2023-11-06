<%-- 
    Document   : edit
    Created on : 29 Jul, 2019, 9:07:54 PM
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
            <h1>Update Hotel Details</h1>
            <form action="editcontroller" method="post">
                
                   
                <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter Hotel name" name="name" value="${hotel.name}"/>
                </div>
                <br>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter price per room" name="price" value="${hotel.price}"/>
                </div>
                <br>   
                <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter link to the website" name="link" value="${hotel.link}"/>
                </div>
                <br>    
                <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter guest rating" name="rating" value="${hotel.rating}"/>
                </div>
                <br>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter hotel location" name="location" value="${hotel.location}"/>
                </div> 
                
                <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter hotel id" name="id" value="${hotel.id}"/>
                </div>
                
                <br>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Update Hotel Details</button> 
                    <br><button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>    

            </form>
        </center>
    </body>
</html>
