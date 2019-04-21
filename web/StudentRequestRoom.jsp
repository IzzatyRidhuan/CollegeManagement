 <%-- 
    Document   : StudentRequestRoom
    Created on : Dec 24, 2018, 3:07:50 AM
    Author     : Nur Atikah
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.Student" %>
<%@ page import="bean.kolej" %>
<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:if test="${sessionScope.memberprofile == null}">
    <% response.sendRedirect(request.getContextPath() + "/terminate2.html");%>
</c:if>

<!DOCTYPE html><html>
    <head>
        <title>Request Room</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="Assets/css/tinggy.css" />
    </head>

    <body>
        <h1 id="colorbox">COLLEGE REGISTRATION SYSTEM</h1>
        <!----------------------[-------NAVIGATION BARS--------]----------------------->
        <ul>
            <li><a href="MainPageStudent.jsp">Home</a></li>
            <li><a href="#">My Pofile</a></li>

            <li>
                <div class="dropdown"><a class="active">Accommodation</a>
                    <div class="dropdown-content">
                        <a href="StudentRequestRoom.jsp">Book A Room</a>
                        <a href="StudentViewResultApplyServlet">View Booking</a>
                    </div>
                </div>
            </li>

            <li style="float:right"><a href="#">Log Out</a></li>
            <li style="float:right"><a>Login As : ${sessionScope.memberprofile.getStudentID()}</a></li>
        </ul>
        <!----------------------[------------------------------]----------------------->
        <h1 style="color: #666">Student Apply Room </h1><br>


        <div class="container">
            
                <table border="1">
                    <thead>
                        <tr>
                            <th>Index</th>
                            <th>Kolej</th>                    
                            <th>Block</th>
                            <th>Available</th>
                            <th>Capacity</th>
                            <th>Id</th>
                            <th>Book</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <c:forEach items="${sessionScope.Kolej}" var="rqst" varStatus="loop">                                
                            <tr>
                                <td><c:out value="${loop.index + 1}" /></td>    
                                <td><c:out value="${rqst.kolejname}" /></td>
                                <td><c:out value="${rqst.block}" /></td>
                                <td><c:out value="${rqst.availability}" /></td>
                                <td><c:out value="${rqst.capacity}" /></td>
                                <td><c:out value="${rqst.id}" /></td>
                                <c:url value="/StudentInsertRequestRoom" var="displayURLSelect">
                                    <c:param name="id"   value="${rqst.id}" />
                                    <c:param name="studentID"   value="${memberprofile.studentID}" />
                                </c:url>
                                <td><a href="<c:out value='${displayURLSelect}' />">Select</a></td>
                                
                            </tr>
                        </c:forEach>
                    
                    </tbody>
                </table>
          
        </div>
    </body>
</html>
