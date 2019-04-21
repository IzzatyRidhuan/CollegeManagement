<%-- 
    Document   : StudentViewResultApply
    Created on : Dec 23, 2018, 5:29:45 PM
    Author     : Nur Atikah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <title>View Result Student Apply</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="Assets/css/tinggy.css" />
    </head>
    <body>
        <h1>COLLEGE REGISTRATION SYSTEM</h1>
        <!----------------------[-------NAVIGATION BARS--------]----------------------->
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
            <li style="float:right"><a>Login As : ${sessionScope.memberprofile.getStudentID()}</a></li>
        </ul>
        <!----------------------[------------------------------]----------------------->

<h1 style="color: #666">Student Apply Room Result</h1><br>
        
<div class="container">
        <table bgcolor=grey>
            <thead>
                <tr>
                    <th>Index</th>
                    <th>Booking ID</th>
                    <th>College</th>
                    <th>Block</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <c:forEach items="${sessionScope.KolejOrder}" var="order" varStatus="loop">
                        <tr>
                            <td><c:out value="${loop.index + 1}" /> </td> 
                            <td><c:out value="${order.orderID}" /> </td>
                            <td><c:out value="${order.kolejname}" /> </td>
                            <td><c:out value="${order.block}" /> </td>
                            <td><c:out value="${order.status}" /> </td>
                        </tr>
                    </c:forEach>
                </tr>
            </tbody>
        </table>
</div>

    </body>
</html>
