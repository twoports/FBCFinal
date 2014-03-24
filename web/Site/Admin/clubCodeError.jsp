<%-- 
    Document   : clubCodeError
    Created on : 24-Mar-2014, 12:17:23
    Author     : MacBootCamp
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Bank CLub</title>
    </head>
    <body>
        <h3>Error occurred accessing database:</h3>
        <%= request.getParameter("message") %>        
    </body>
</html>


