
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="background.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <script>
        
    </script>
    <jsp:include page="header.jsp"/>
    <body>
    <center>
        <div class="login">
            <div class="heading">
            <h2>Add hotel details</h2>
        <form action="addhotelcontroller" method="post" enctype="multipart/form-data">
            <br>
            <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter Hotel name" name="name" id="name" value=""/>
            </div>
            <br>
            <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter room charges" name="price" id="price" value=""/>
            </div>
            <br>
             <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter Website link" name="link" id="link" value=""/>
            </div>
            <br>
            <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter Hotel rating" name="rating" id="rating" value=""/>
            </div>
            <br>
            <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="file" accept="images/*" class="form-control" placeholder="" name="photo" id="photo" value=""/>
            </div>
            <br>
            <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter Unique Hotel id" name="id" id="id" value="" />
            </div>
            <br>
            <div class="input-group input-group-lg">
                    <span class="input-group-addon"><i></i></span>
                    <input type="text" class="form-control" placeholder="Enter location" name="location" id="location" value="" />
            </div>
            
            <br>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Add</button> 
                    <br><button class="btn btn-lg btn-primary btn-block" type="reset">Reset</button>    
        </form>
    </center>
    </body>
</html>
