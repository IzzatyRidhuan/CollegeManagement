<%-- 
    Document   : MainPageAdmin
    Created on : Dec 27, 2018, 8:43:05 PM
    Author     : Najihah Zanudin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.User" %>
<%@ page import="bean.SetCollege" %>
<%@ page import="java.util.ArrayList" %>

<c:if test="${sessionScope.memberprofile == null}">
    <% response.sendRedirect(request.getContextPath() + "/terminate2.html");%>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="alpha/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="alpha/css/style.css"> 
        <!--<link rel="stylesheet" href="alpha/css/main.css" />
        <link rel="stylesheet" href="alpha/css/font-awesome.min.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="alpha/css/ie8.css" /><![endif]-->
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>

    </head>
    <body class="landing">
        <div id="page-wrapper">

            <h1 id="colorbox">College Accommodation System</h1>

            <ul>
                <li><a class="active" href="#">Home</a></li>
                <li><a href="AdminProfile.jsp">My Pofile</a></li>

                <li><div class="dropdown">
                        <a>Accomodation</a>
                        <div class="dropdown-content">
                            <a href="AdminViewOrderServlet">View Order</a>
                            <a href="AdminAddCollege.jsp">Add Room</a>
                            <a href="ManageDataServlet">Manage Room</a>
                        </div>
                    </div> 
                </li>


                <li style="float:right"><a href="admin_history" class="button">History</a></li>
                <li style="float:right"><a href="logout.jsp" class="button">Log Out</a></li>
                

            </ul>

            <!-- Banner -->
            <section id="banner">
                <div style=" background:#ffffff; background-color: rgba(255,255,255,0.5); width:650px; height: 475px; margin:0 auto;">
                    <h2 style="padding-top:10px; text-align: center;font-size: 3em;margin-bottom: 10px;text-transform: uppercase;font-weight: bold; color: #333;">Welcome ${sessionScope.memberprofile.getFullName()}</h2>
                    <hr>
                    <br>
                    <%--<img src ="${sessionScope.memberprofile.getImage()}" width ="300" style="border:3px solid black">--%>
                    <input type="image" src="images/admin.png" width ="300" style="border:3px solid black">


                </div>
            </section>



            <!-- Scripts -->
            <script src="alpha/js/jquery.min.js"></script>
            <script src="alpha/js/jquery.dropotron.min.js"></script>
            <script src="alpha/js/jquery.scrollgress.min.js"></script>
            <script src="alpha/js/skel.min.js"></script>
            <script src="alpha/js/util.js"></script>
            <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
            <script src="alpha/js/main.js"></script>

    </body>



</html>
