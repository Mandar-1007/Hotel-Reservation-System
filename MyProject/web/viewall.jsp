<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link href="css/background.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    
    
      
        <jsp:include page="header.jsp"/> 
        
        <sql:setDataSource driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/hotel"
                           user="hotel"
                           password="hotel"
                           var="myDatasource"/>
        
        <sql:query dataSource="${myDatasource}" var="data">
            select * from hotel where flag=?
            <sql:param>A</sql:param>
        </sql:query>
        <sql
            <br>
            <div class="container" >
            <div class="row">
                <c:forEach items="${data.rows}" var="row">
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <br>
                        <br>
                        <br>
                        <div><img src="photoservlet?id=${row.id}" height="250px"  /></div>
                        <br>
                        <br>
                        <b>
                        <p>${row.name}</p>
                        <p>Location: ${row.location}</p>
                        <p>Room charges: ₹ ${row.price}</p>
                        <p>Guest Rating: ${row.rating}</p>
                        <p>
                            <a href="${row.link}" target="_blank" class="btn btn-primary">View Website</a>
                            <c:if test="${user.role=='admin'}">
                            <a href="editcontroller?id=${row.id}">Edit</a> | <a href="deletecontroller?id=${row.id}">Delete</a>   
                            </c:if> 
                        </p>
                        <p>
                        </b>
                          
                        </p>
                    </div>
                </c:forEach>    
            </div>
        </div>
