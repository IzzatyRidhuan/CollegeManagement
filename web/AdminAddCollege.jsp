<%-- 
    Document   : AdminAddCollege
    Created on : Dec 27, 2018, 8:43:05 PM
    Author     : Najihah Zanudin
--%>
<%@page import="bean.kolej" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
            <!----------------------[-------NAVIGATION BARS--------]----------------------->
            <ul>
                <li><a class="active" href="MainPageAdmin.jsp">Home</a></li>
                <li><a href="AdminProfile.jsp">My Pofile</a></li>
                <li><div class="dropdown">
                        <a>Accomodation</a>
                        <div class="dropdown-content">
                            <a href="AdminViewOrderServlet">View Order</a>
                            <a href="ManageDataServlet">Manage Room</a>
                        </div>
                    </div> 
                </li>

                <li style="float:right"><a href="logout.jsp">Log Out</a></li>
                <li style="float:right"><a>Login As : ${sessionScope.memberprofile.getFullName()}</a></li>
            </ul>
            <!----------------------[------------------------------]----------------------->
            <h2 align="center">ADD ROOM</h2>

            <div id="input" class="container">

                <form method="POST" action="AddCollegeServlet" name="myForm"  onsubmit="return(validate());">


                    <table style="margin: 10px; border: 5px">


                        <tr style="height:50px;font-size:14pt;">
                            <td align="left">Kolej </td>
                          
                                    <td><select name="kolejname" id="kolejname" style="width:100px" >
                                            <option value="Mawar"> Mawar </option>
                                            <option value="Kasturi"> Kasturi </option>
                                            <option value="Mangkok"> Mangkok </option>
                                        </select></td>
                        </tr>
                        <tr style="height:50px;font-size:14pt;">
                           
                            <td align="left" >Block</td>
                            <td><select name="block" id="block" style="width:100px">
                                            <option value="M12"> M12 </option>
                                            <option value="M13"> M13 </option>
                                            <option value="M14"> M14 </option>
                                            <option value="M15"> M15 </option>
                                            <option value="K12"> K12 </option>
                                            <option value="K13"> K13 </option>
                                            <option value="K14"> K14 </option>
                                            <option value="K15"> K15 </option>
                            </select></td>
                        </tr>
                        
                        <tr style="height:50px;font-size:14pt;">
                            <td align="left" >Capacity</td>
                            <td><select name="capacity" id="capacity" style="width:100px">
                                            <option value="2"> 2 room </option>
                                            <option value="10"> 10 room </option>
                                            <option value="15"> 15 room </option>
                                            <option value="20"> 20 room </option>
                                            
                                </select></td>
                        </tr>
                        <tr>
                        

                        <tr>
                            <td ></td>
                            <td align="center">
                                <br>
                                <button type="submit" value="Confirm"><b>CONFIRM</b></button>
                                <button type="reset"><b>RESET</b></button>
                            </td>
                        </tr>
                    </table>

                </form>

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
