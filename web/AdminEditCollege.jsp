<%-- 
    Document   : AdminEditCollege
    Created on : Dec 27, 2018, 8:43:05 PM
    Author     : Najihah Zanudin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.User" %>
<%@ page import="bean.kolej" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="alpha/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="alpha/css/style.css"/> 
        <!--
        <link rel="stylesheet" href="alpha/css/main.css" />
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


            <h1 style="color: #666">Update Room Booking Information</h1><br>



            <form method="post" action="EditCollegeProcessServlet" style=" width: 100%;">

                <div id="box">
                        
                    <table>
                        <tr>
                            <td align="left"><b><p>Kolej : <p></b>
                               <% String college="${sessionScope.collegeedit.getKolejname()}"; 
                               System.out.println("${sessionScope.collegeedit.getKolejname()}");%>
                            <td><select style="width:200px; height:25px;" name="kolejname" id="kolejname" value="${sessionScope.collegeedit.getKolejname()}" >
                                <% if("college" == "Mawar"){%>
                                <option value="Mawar" selected> Mawar </option>
                                <option value="Kasturi"> Kasturi </option>    
                                <%}
                                else{%>
                                <option value="Kasturi" selected> Kasturi </option>
                                <option value="Mawar"> Mawar </option>
                                <%}%>
                            </select></td>
                        </tr>


                                    <tr>
                                        <td align="left"><b><p>Block :</p>
                                                <td><select name="block" id="block" value="<jsp:getProperty name="collegeedit" property="block"/>" >
                                                        <option value="M12"> M12 </option>
                                            <option value="M13"> M13 </option>
                                            <option value="M14"> M14 </option>
                                            <option value="M15"> M15 </option>
                                            <option value="K12"> K12 </option>
                                            <option value="K13"> K13 </option>
                                            <option value="K14"> K14 </option>
                                            <option value="K15"> K15 </option>
                            </select></td>
                                                    </select></td>
                                                    </tr>

<%--
                                                <tr>
                                                    <td align="left"><b>Capacity) : </b>
                                                    <td><select name="capacity" id="capacity" value="<jsp:getProperty name="collegeedit" property="capacity"/>">
                                                             <option value="2"> 2 room </option>
                                            <option value="10"> 10 room </option>
                                            <option value="15"> 15 room </option>
                                            <option value="20"> 20 room </option>
                                                        </select></td>
                                                </tr>
--%>

                                                <tr>
                                                    <td></td>
                                                    <td><input type="hidden" name="id" value="<jsp:getProperty name="collegeedit" property="id"/>">
                                                        <button class="button">Cancel</button>
                                                        <button type="submit" class="button">Submit</button>

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
