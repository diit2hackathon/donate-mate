<%-- 
    Document   : login_process
    Created on : Apr 4, 2012, 10:03:56 AM
    Author     : SaeiD
--%>

<%@page import="info.diit.entities.User"%>
<%@page import="info.diit.controller.MyEntityManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String username = request.getParameter("usernameField");
        String password = request.getParameter("passwordField");
        
        MyEntityManager myEntityManager = new MyEntityManager();
        /*Create an object of MyEntityManager to use the methods like persis and update*/            
        User users = myEntityManager.getEntityManager().find(User.class, username);
        /*finding the username string in the User class*/
        if (users!=null)
        { 
            if(users.getUserPassword().equals(password))
            {
                /*if the password is matched then set a session attribute and redirect to admin.jsp page*/
                session.setAttribute("users", users);
                response.sendRedirect("admin.jsp");
            }
            else
            {
                /*if not found redirect to errorlogin.jsp page*/
                response.sendRedirect("errorlogin.jsp");
            }
        }
        else
        {
            /*if not found redirect to errorlogin.jsp page*/
            response.sendRedirect("errorlogin.jsp");
        }
        %>
    </body>
</html>
