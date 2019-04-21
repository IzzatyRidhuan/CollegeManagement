<%-- 
    Document   : AdminProfile
    Created on : Dec 27, 2018, 8:43:05 PM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.User" %>
<%@ page import="bean.SetCollege" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Admin Page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="alpha/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="alpha/css/style.css"> 
        <!--<link rel="stylesheet" href="alpha/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="alpha/css/ie8.css" /><![endif]-->
    </head>
    <body class="landing">
        <div id="page-wrapper">

            <h1 id="colorbox">College Accommodation System</h1>

            <ul>
                <li><a class="active" href="MainPageAdmin.jsp">Home</a></li>
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
                <li style="float:right"><a href="logout.jsp">Log Out</a></li>
                <li style="float:right"><a>Login As : ${sessionScope.memberprofile.getFullName()}</a></li>
            </ul>

            <h1 style="color: #666">Admin Profile</h1><br>



            <form method="post" action="AdminUpdateProfileServlet" style=" width: 100%;">

                <div id="box"  align="center" >
              <%--   <img src ="${sessionScope.memberprofile.getImage()}" width ="150" style="border:3px solid black" >--%>
                    <input type="image" src="images/admin.png" width ="150" style="border:3px solid black">
                    <table>
                        <tr>
                            <td align="left"><b><p>Name : <p></b>
                            <td><input type="text" name="fullname" id="fullname" value="${sessionScope.memberprofile.getFullName()}" >
                        </tr>


                        <tr>
                            <td align="left"><b><p>Username :</p>
                            <td><b><input type="text" name="username" id="username" value="${sessionScope.memberprofile.getUsername()}" readonly />

                        </tr>

                        <tr>
                            <td align="left"><b><p>Password :</p>
                            <td><b><input type="text" name="password" id="password" value="${sessionScope.memberprofile.getPassword()}"/>
                        </tr>


                        <tr>
                            <td align="left"><b>Email Address : </b>
                            <td><input type="text" name="email"  id="email"  style="width:180px" value="${sessionScope.memberprofile.getEmail()}" >
                        </tr>

                        <tr>
                            <td></td>
                            <td><input class="button alt icon fa-check" style="width:180px" type="submit" class="button" value="Edit"/>
                        </tr>	
                    </table>
                </div>
            </form>

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
