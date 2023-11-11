<%-- 
    Document   : multiple-checkbox
    Created on : 2 Aug, 2019, 4:06:36 PM
    Author     : MIMYMEMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:include page="header.jsp"></jsp:include>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/checkbox.css" rel="stylesheet" type="text/css">
        <link href="css/login.css" rel="stylesheet" type="text/css">
        <link href="css/background.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
    <center>
        
                
    </div>
            
            
       <form method="post" action="checkboxcontroller">
           <div class="login">
               
        <div class="heading">
           <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" id="username" class="form-control" placeholder="Your username" name="username" value="${user.username}" />
            </div>       
            <br>
            <br>   
        <div class="heading">
           <div class="input-group input-group-lg">
            <span class="input-group-addon"><i></i></span>
            <input type="text" id="hotelname" class="form-control" placeholder="Your hotel" name="hotelname" value="${hotelname.hn}"  />
            </div>
            
            
           <br>
           <br>
           
           
           <h4><b>Select services:<br></b></h4>
           <input type="checkbox" name="services" value="24-hour room service">24-hour room service<br>
           <input type="checkbox" name="services" value="Restaurant">Restaurant<br>
           <input type="checkbox" name="services" value="Pool">Pool<br>
           <input type="checkbox" name="services" value="Wi-Fi">Wi-Fi<br>
           <br>
           <font style="color: red;">*Services are subject to additional charges</font>
            <br>
            <br>
            
        
            <center>
                <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" placeholder="Enter number of Guests" name="adult" value=""/>
            </div>
            <br>    
            <br>
            <br>
            <div class="input-group input-group-lg">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" placeholder="Enter no. of children" name="child" value=""/>
            </div>
            <br>
            <br>
                <h4><b>Select type of room:<br></b></h4>
                <select name="rooms">
                <option value="single">Single Room</option>
                <option value="double">Double Room</option>
                <option value="family">Family Room</option>
                <option value="multiple">Multiple Room</option>
                </select>
            <br>
            <br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Next</button> 
            </center>
    </form>
    </center>
    </body>
</html>
