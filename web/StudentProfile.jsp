<%-- 
    Document   : AdminProfile
    Created on : Dec 27, 2018, 8:43:05 PM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="data.student" %>
<%@ page import="bean.kolej" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Student Page</title>
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
                <li><a class="active" href="MainPageStudent.jsp">Home</a></li>
                <li><a href="StudentProfile.jsp">My Pofile</a></li>

                <li><div class="dropdown">
                        <a>Accomodation</a>
                        <div class="dropdown-content">
                            <a href="StudentRequestRoom">Book A Room</a>
                            <a href="StudentViewResultApplyServlet">View Booking </a>
                 
                        </div>
                    </div> 
                </li>

                
                <li style="float:right"><a href="logout.jsp">Log Out</a></li>
                <li style="float:right"><a>Login As : ${sessionScope.memberprofile.getStudentname()}</a></li>
            </ul>

            <h1 style="color: #666">Student Profile</h1><br>



            <form method="post" action="StudentUpdateProfileServlet" style=" width: 100%;">

                <div id="box"  align="center" >
              <%--   <img src ="${sessionScope.memberprofile.getImage()}" width ="150" style="border:3px solid black" >--%>
                    <input type="image" src="images/admin2.png" width ="150" style="border:3px solid black">
                    <table>
                        <tr>
                            <td align="left"><b><p>Name : <p></b>
                            <td><b><input type="text" name="studentname" id="studentname" value="${sessionScope.memberprofile.getStudentname()}" >
                        </tr>


                        <tr>
                            <td align="left"><b><p>Username :</p>
                            <td><b><input type="text" name="studentID" id="studentID" value="${sessionScope.memberprofile.getStudentID()}" readonly />

                        </tr>

                        <tr>
                            <td align="left"><b><p>Password :</p>
                            <td><b><input type="text" name="studentpassword" id="studentpassword" value="${sessionScope.memberprofile.getStudentpassword()}"/>
                        </tr>


                        <tr>
                            <td align="left"><b>Phone Number : </b>
                            <td><b><input type="text" name="studentphoneno"  id="studentphoneno"  style="width:180px" value="${sessionScope.memberprofile.getStudentphoneno()}" >
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
