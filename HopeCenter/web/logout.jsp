<%-- 
    Document   : logout
    Created on : Apr 4, 2012, 3:01:36 PM
    Author     : SaeiD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        session.invalidate();
        response.sendRedirect("login.jsp");
        %>
    </body>
</html>
