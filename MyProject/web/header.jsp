
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="header.css" rel="stylesheet" type="text/css"/>
        <link href="login.css" rel="stylesheet" type="text/css"/>
        
        
        
        
        <title>JSP Page</title>
        <style>
           body
{
     background-color:#40E0D0; 
    
                
}

form
{
    background-color:#40E0D0;
    
}



footer
{
    background-color:#40E0D0;
}

html
{
    
    background-color:#40E0D0;
}

</style>
        
        
    </head>
    <body>
    <center>
        <h1><b>Hotel Reservation System</b></h1>
        
        <form>
            <nav>
            <div class="topnav">
            
            <c:if test="${user==null}"> 
                <a href="home.jsp" class="topnavnav">HOME</a>
               
            <div class="topnav-right">        
                <a href="login.jsp" class="topnav">SIGN IN</a>
                <a href="register.jsp" class="topnav">SIGN UP</a>
            </c:if>
            </div>
                   
            
            
                
            <div class="topnav">
            <c:if test="${user!=null}">
                    <c:if test="${user.role=='admin'}">
                <a href="add.jsp" class="topnav">ADD</a>
                    </c:if>
                <a href="details.jsp" class="topnav">SEARCH</a>
                 <a href="view.jsp" class="topnav">BOOK</a>
                 <a href="viewall.jsp" class="topnav">VIEW ALL HOTELS</a>
                 <a href="mybookings.jsp" class="topnav">MY BOOKINGS</a>
                 <div class="topnav-right"> 
                     
                     
                         <a class="topnav">WELCOME ${user.username}</button>
                         
                         <a href="login.jsp" class="topnav">LOGOUT</a>
                     </div>
            </c:if>
            </div>
            </div>
            </div>
            </nav>
        </form>
    </center>
    </body>
</html>
