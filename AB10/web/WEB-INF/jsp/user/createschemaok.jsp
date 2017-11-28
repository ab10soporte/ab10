<%-- 
    Document   : registerok
    Created on : 31/07/2017, 06:43:29
    Author     : Seba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AB10</title>
    </head>
    <body>
        <h1>MySql create schema</h1>

        <%
            //las variables que nos llegan son: txt1, txt2, radio1, ck1, select1, textarea1
            String state = request.getParameter("state");
            out.println("State:  " + state + "<br /><br />");
            String exc = request.getParameter("exc");
            out.println("Exception:  <br /><br />" + exc + "<br />");
        %>
    </body>
</html>
