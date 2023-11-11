<%-- 
    Document   : mybookings
    Created on : 3 Aug, 2019, 7:50:10 AM
    Author     : MIMYMEMA
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link href="css/background.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    
    <sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/hotel"
                           user="hotel"
                           password="hotel"
                           var="myDatasource"/>
        
    <sql:query dataSource="${myDatasource}" var="data">
        select * from confirm_booking where flag=? and email=?
        <sql:param>A</sql:param><sql:param>${user.email}</sql:param>
    </sql:query>
        <center>
        <c:forEach items="${data.rows}" var="row">
            <p><b>${row.hotelname}</b></p>  
            <p><b>${row.checkin}</b></p>
            <p><b>${row.checkout}</b></p>
            <p>
                
                <a href="cancelbookingcontroller?hotelname=${row.hotelname}" class="btn btn-primary">Cancel Booking</a>
                
            </p>
        </center>
            
            
            
            
            
        </c:forEach>