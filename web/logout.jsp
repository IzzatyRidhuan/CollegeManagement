<%-- 
    Document   : logout
    Created on : Dec 27, 2018, 8:43:05 PM
    Author     : Najihah Zanudin
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    session.invalidate();
    response.sendRedirect("index.html"); 
%>