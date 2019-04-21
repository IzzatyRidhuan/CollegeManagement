<%-- 
    Document   : AdminAnalysis
    Created on : Dec 27, 2018, 8:43:05 PM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.KolejOrder" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link href="alpha/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="alpha/css/style.css" rel="stylesheet" type="text/css"/>
        <script src="alpha/js/jquery.js" type="text/javascript"></script>
        <script src="alpha/js/bootstrap.min.js" type="text/javascript"></script>
        <!--[if lte IE 8]><script src="alpha/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="alpha/css/style.css" />
        <!--<link rel="stylesheet" href="alpha/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="alpha/css/ie8.css" /><![endif]-->



        <style>
            #viewbus {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            btn-primary {
                color:#fff;background-color:#337ab7;
                border-color:#2e6da4;}
            </style>
        </head>
        <body class="landing">
        <div id="page-wrapper">
            <c:if test="${sessionScope.memberprofile == null}">
                <c:redirect url="index.html"/>
            </c:if>
            
            <h1 id="colorbox">College Accommodation System</h1>

<!----------------------[------------------------------]----------------------->	

<!----------------------[-------NAVIGATION BARS--------]----------------------->
<ul>
  <li><a class="active" href="MainPageAdmin.jsp">Home</a></li>
  <li><a href="AdminProfile.jsp">My Pofile</a></li>
  
  <li><div class="dropdown">
    <a>Accomodation</a>
	<div class="dropdown-content">
      <a href="ManageDataServlet">Manage Room</a>
      <a href="AdminAddBus.jsp">Add Room</a>
    </div>
	</div> 
  </li>
 
  <li style="float:right"><a href="logout.jsp">Log Out</a></li>
  <li style="float:right"><a>Login As : ${sessionScope.memberprofile.getFullName()}</a></li>
</ul>
<!----------------------[------------------------------]----------------------->
            
  
                                 <h2 align="center">VIEW ORDER</h2>

                                 <div id="input" class="container">

                                <!-- <h1 style="color: #666">Room Booking Management</h1>-->
                                 
                                
                                <table style="margin: 10px; border: 5px">
                                        <tr>
                                            <td align="center"><strong>College</strong></td>
                                            
                                            <td align="center"><strong>Block</strong></td>
                                            
                                            <td align="center"><strong>Capacity</strong></td>
                                     
                                        </tr>
                               
                                    <tbody>

                                        <c:forEach items="${sessionScope.bookingU}" var="bookU" varStatus="loop">

                                            <tr>
                                                <td style="color:black"><c:out value="${bookU.kolejname}"/></td>
                                                
                                                <td style="color:black"><c:out value="${bookU.block}"/></td>
                                             
                                                <td style="color:black"><c:out value="${bookU.capacity}"/></td>
                                            </tr>

                                        </c:forEach>
                                       </table>
                                   
                          
                                             <tr>
                                                <td ></td>
                                                <td align="center">
                                                <br>
                                                <button type="submit" value="Confirm" data-toggle="modal" data-target=".demo-popup"><b>BOOK</b></button>
                                                 <button type="reset"><b>RESET</b></button>
                                                 </td>
                                            </tr>
                                
                               
                             </div>
                        
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

