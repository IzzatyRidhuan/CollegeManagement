<%-- 
    Document   : StudentRegistration
    Created on : Dec 24, 2018, 4:37:31 AM
    Author     : Nadira Asmat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <title>Student Page</title>
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
                <li><a class="active" href="index.html">Home</a></li>
                        
            </ul>
            <!----------------------[------------------------------]----------------------->
       
        <!-- Banner -->
        <div id="input" class="container">
            <h2 style="color: #666">Student Registration</h2>
            <hr>
            <form method="post" action="StudRegisterServlet" aling="center">
               
                    
                     <table style="margin: 10px; border: 5px" align="center">


                        <tr style="height:50px;font-size:14pt;">
                            <td align="left">Full Name : </td>
                            <td> <input type="text" name="studentname" id="studentname" value="" placeholder="Enter Your Full Name" required></td>
                         </tr>

                    <tr style="height:50px;font-size:14pt;">
                            <td align="left">IC Number : </td>
                            <td><input type="text" name="studentIC" id="studentIC" value="" placeholder="Enter IC Number" required></td>
                    </tr>
                                </div>

                        <tr style="height:50px;font-size:14pt;">
                            <td align="left">Gender : </td>
                            <td>        <input type="radio" name="studentgender" value="MALE"> Male
                                    <input type="radio" name="studentgender" value="FEMALE"> Female<br></td>
                            </tr>

                        <tr style="height:50px;font-size:14pt;">
                            <td align="left">Race : </td>
                            <td>      <input type="radio" name="studentrace" value="MALAY"> Malay
                                <input type="radio" name="studentrace" value="CHINESE"> Chinese<br>
                                    <input type="radio" name="studentrace" value="INDIAN"> Indian </td>
                        </tr>

                            <tr style="height:50px;font-size:14pt;">
                                <td align="left">Phone Number : </td>
                            <td><input type="text" name="studentphoneno" id="studentphoneno" value="" placeholder="Enter Phone Number" required></td>
                            </tr>

                              <tr style="height:50px;font-size:14pt;">
                                  <td align="left">Student ID : </td>
                                  <td><input type="text" name="studentID" id="studentID" value="" placeholder="Enter Student ID" required></td>
        </tr>

                               <tr style="height:50px;font-size:14pt;">
                                   <td align="left">Password : </td> 
                                   <td><input type="password" name="studentpassword" id="studentpassword" value="" placeholder="Enter Password" required></td>
                               </tr>
 <tr>
                            <td ></td>
                            <td align="center">
                                <br>
                                <button type="submit" ><b>Submit</b></button>
                            
                            </td>
                        </tr>
                    </table>

                </form>

            </div>
                                <hr>
                                </div>
                                </body>
                                </html>
