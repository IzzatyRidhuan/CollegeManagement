<%-- 
    Document   : AdminViewOrder
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <h1 style="color: #666">Room Booking Management</h1>

            <table align="center" width="600" border="1" cellspacing="0" cellpadding="3">
                <tr>
                    <td align="center"><strong>Booking ID</strong></td>

                    <td align="center"><strong>Student ID</strong></td>

                    <td align="center"><strong>College</strong></td>

                    <td align="center"><strong>Block</strong></td>

                    <td align="center" colspan="3"><strong>Status</strong></td>

                </tr>

                <tbody>
                    <!--booking items-->
                    <c:forEach items="${sessionScope.bookingA}" var="book" varStatus="loop">                    

                        <tr>
                            <td style="color:black"><c:out value="${book.orderID}"/></td>

                            <td style="color:black"><c:out value="${book.studentID}"/></td>
                           <!-- <td style="color:black"><c:out value="${book.id}"/></td> -->

                            <td style="color:black"><c:out value="${book.kolejname}"/></td>

                            <td style="color:black"><c:out value="${book.block}"/></td>


                            <c:if test="${book.status == 'Pending'}">
                                <c:url value="/RequestReceivedServlet" var="displayURLCollected">
                                    <c:param name="id"   value="${book.orderID}" />
                                </c:url>
                                <td><c:out value="${book.status}"/></td>
                                <td><a href="<c:out value='${displayURLCollected}' />&bookid=<c:out value='${book.id}'/>&app=1">Approve</a></td>
                                <td><a href="<c:out value='${displayURLCollected}' />&bookid=<c:out value='${book.id}'/>&app=2">Reject</a></td>
                                </c:if>
                                
                                <c:if test="${book.status == 'Approve'}">
                                <td colspan="3" align="center"><c:out value="${book.status}"/></td>
                                </c:if>
                                
                                <c:if test="${book.status == 'Reject'}">
                                <td colspan="3" align="center"><c:out value="${book.status}"/></td>
                                </c:if>
                        </tr>

                    </c:forEach>
                </tbody> 
            </table>    
        </div> <!-- table-responsive -->                    
    </fieldset>
</form>

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
