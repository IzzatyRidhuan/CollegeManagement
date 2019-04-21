<%-- 
    Document   : AdminManageCollege
    Created on : Dec 27, 2018, 5:52:12 PM
    Author     : Najihah Zanudin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.User" %>
<%@ page import="bean.kolej" %>
<%@ page import="java.util.ArrayList" %>


<c:if test="${sessionScope.memberprofile == null}">
    <% response.sendRedirect(request.getContextPath() + "/terminate2.html"); %>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="alpha/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="alpha/css/style.css"/> 
        <!--<link rel="stylesheet" href="alpha/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="alpha/css/ie8.css" /><![endif]-->
    </head>
    <body class="landing">
        <div id="page-wrapper">


            <h1 id="colorbox">College Accommodation System</h1>

            <!----------------------[------------------------------]----------------------->	

            <!----------------------[-------NAVIGATION BARS--------]----------------------->
            <ul>
                <li><a class="active" href="MainPageAdmin.jsp">Home</a></li>
                <li><a href="AdminProfile.jsp">My Pofile</a></li>

                <li><div class="dropdown">
                        <a>Accomodation</a>
                        <div class="dropdown-content">
                            <a href="AdminViewOrderServlet">View Order</a>
                            <a href="AdminAddCollege.jsp">Add Room</a>
                        </div>
                    </div> 
                </li>

                <li style="float:right"><a href="logout.jsp">Log Out</a></li>
                <li style="float:right"><a>Login As : ${sessionScope.memberprofile.getFullName()}</a></li>
            </ul>
            <!----------------------[------------------------------]----------------------->
            <h1 style="color: #666">Room Booking Management</h1>

            <table align="center" width="600" border="1" cellspacing="0" cellpadding="3">
                <tr>
                    <td align="center"><strong>Index</strong></td>
                    <td align="center"><strong>College </strong></td>       
                    <td align="center"><strong>Block</strong></td>
                   <td align="center"><strong>Capacity</strong></td>
                    <td align="center"><strong>Status</strong></td>
                    <td align="center"><strong>Delete</strong></td>

                </tr>

                <tbody>
                    <c:forEach items="${sessionScope.collegelist}" var="currentcollege" varStatus="loop">
                        <tr>
                            <th><c:out value="${loop.index + 1}" /></th>

                            <c:url value="/EditCollegeServlet" var="displayURLEdit">
                                <c:param name="id"   value="${currentcollege.id}" ></c:param>
                            </c:url>

                            <th><a href="<c:out value='${displayURLEdit}' />"><c:out value="${currentcollege.kolejname}" /></a></th>   <!-- roomtype-->


                            <th><a href="<c:out value='${displayURLEdit}' />"><c:out value="${currentcollege.block}" /></a></th>     <!-- block-->
                            
                            <th><a href="<c:out value='${displayURLEdit}' />"><c:out value="${currentcollege.capacity}" /></a></th>     <!-- block-->


                      <%--      <th><a href="<c:out value='${displayURLEdit}' />"><c:out value="${currentcollege.capacity}" /></a></th>     <!-- period-->--%>





                            <c:if test="${currentcollege.status == 'active'}">
                                <c:url value="/DeactiveCollegeServlet" var="displayURLDeactive">
                                    <c:param name="id"   value="${currentcollege.id}" />
                                </c:url>
                                <th><a href="<c:out value='${displayURLDeactive}' />"><c:out value="${currentcollege.status}" /></a></th>
                                </c:if>

                            <c:if test="${currentcollege.status == 'deactive'}">
                                <c:url value="/ActiveCollegeServlet" var="displayURLActive">
                                    <c:param name="id"   value="${currentcollege.id}" />
                                </c:url>
                                <th><a href="<c:out value='${displayURLActive}' />"><c:out value="${currentcollege.status}" /></a></th>
                                </c:if>

                            <c:url value="/DeleteCollegeServlet" var="displayURLDelete">
                                <c:param name="id"   value="${currentcollege.id}" />
                            </c:url>
                            <th><a href="<c:out value='${displayURLDelete}' />">Delete</a></th>
                        </tr>
                    </c:forEach>
                </tbody> 
            </table>    
        </div> <!-- table-responsive -->                    



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
