<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
    <head>
        <!------------------- Script ------------------->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--image logo-->    
        <link rel="icon" href="../img/xslogo.png">

        <!--opensource css--> 
        <link rel="stylesheet" href="https://getbootstrap.com/docs/4.1/dist/css/bootstrap.min.css" >
     
    
       
        <link rel="stylesheet" href="alpha/css/style.css"> 

        <style>
            #cssTable td,th 
            {
                text-align: center; 
                vertical-align: middle;
            }
        </style>
        <!------------------- ------ ------------------->
        <title>ADMIN HISTORY</title>
    </head>
    <body class="landing">
        <div id="page-wrapper">

            <h1 id="colorbox">College Accommodation System</h1>

            <ul>
                <li><a class="active" href="MainPageAdmin.jsp">Home</a></li>
                <li><a href="AdminProfile.jsp">My Pofile</a></li>

         


             
                <li style="float:right"><a href="logout.jsp" class="button">Log Out</a></li>
                

            </ul>
        <!----------------- ---------- ----------------->

        <!------------------- Coding ------------------->
        <h3 style="color: #666">Booking History</h3>

            

          
        <div class="container">
           
               
            
                         <table align="center" width="600" border="1" cellspacing="0" cellpadding="3">
                <tr>
                  
                    <td align="center"><strong>Student ID</strong></td>

                    <td align="center"><strong>College</strong></td>

                    <td align="center"><strong>Block</strong></td>

                    <td align="center"><strong>Status</strong></td>

                </tr>
                        <tbody>
                            <c:set var = "Collected" scope = "session" value = "${0}"/>
                            <c:set var = "Cancel" scope = "session" value = "${0}"/>
                            <c:set var = "Pending" scope = "session" value = "${0}"/>

                            <c:forEach items="${sessionScope.KolejOrder}" var="slist" varStatus="loop">
                                <c:set var = "index1" scope = "session" value = "${1}"/>
                                <tr>
                                    <td><c:out value="${loop.index+1}" /></td>
                                    <td><c:out value="${slist.studentID}" /></td>
                                    <td><c:out value="${slist.kolejname}" /></td>
                                    <td><c:out value="${slist.block}" /></td>

                                    <c:if test="${slist.status == 'Pending'}">
                                        <c:set var = "Pending" scope = "session" value = "${Pending+index1}"/>
                                        <td style="background-color:#bfff00">
                                            Pending
                                        </td>
                                    </c:if>

                                    <c:if test="${slist.status == 'Collected'}">
                                        <c:set var = "Collected" scope = "session" value = "${Collected+index1}"/>
                                        <td style="background-color:	#00ffbf">
                                            Approve
                                        </td>
                                    </c:if>

                                    <c:if test="${slist.status == 'Cancel'}">
                                        <c:set var = "Cancel" scope = "session" value = "${Cancel+index1}"/>
                                        <td style="background-color:#cc3333">
                                            Reject
                                        </td>
                                    </c:if>

                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <hr>
                    <table class="table mt-3 table-hover table-bordered" id="cssTable">
                        <tr style="background-color:#00ffbf">
                            <td>
                                Total Approve Student :
                            </td>
                            <td>
                                <c:out value = "${Collected}"/>
                            </td>
                        </tr>

                        <tr style="background-color:#cc3333">
                            <td>
                                Total Rejected Student :
                            </td>
                            <td>
                                <c:out value = "${Cancel}"/>
                            </td>
                        </tr>

                        <tr style="background-color:#bfff00">
                            <td>
                                Total Pending Student :
                            </td>
                            <td>
                                <c:out value = "${Pending}"/>
                            </td>
                        </tr>

                    </table>

                </div>
            </div>
        </div>



    </body>











